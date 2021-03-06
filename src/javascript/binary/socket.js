/*
 * It provides a abstraction layer over native javascript Websocket.
 *
 * Provide additional functionality like if connection is close, open
 * it again and process the buffered requests
 *
 *
 * Usage:
 *
 * `BinarySocket.init()` to initiate the connection
 * `BinarySocket.send({contracts_for : 1})` to send message to server
 */
var BinarySocket = (function () {
    'use strict';

    var binarySocket,
        bufferedSends = [],
        manualClosed = false,
        events = {},
        authorized = false,
        timeouts = {},
        req_number = 0,
        socketUrl;
        if(window.location.host == 'www.binary.com'){
          socketUrl = "wss://ws.binaryws.com/websockets/v3";
        } else{
          socketUrl = "wss://"+window.location.host+"/websockets/v3";
        }

    if (page.language()) {
        socketUrl += '?l=' + page.language();
    }

    var clearTimeouts = function(){
        for(var k in timeouts){
            if(timeouts.hasOwnProperty(k)){
                clearTimeout(timeouts[k]);
                delete timeouts[k];
            }
        }
    };

    var status = function () {
        return binarySocket && binarySocket.readyState;
    };

    var isReady = function () {
        return binarySocket && binarySocket.readyState === 1;
    };

    var isClose = function () {
        return !binarySocket || binarySocket.readyState === 2 || binarySocket.readyState === 3;
    };

    var sendBufferedSends = function () {
        while (bufferedSends.length > 0) {
            binarySocket.send(JSON.stringify(bufferedSends.shift()));
        }
    };

    var send = function(data) {
        if (isClose()) {
            bufferedSends.push(data);
            init(1);
        } else if (isReady()) {
            if(!data.hasOwnProperty('passthrough')){
                data.passthrough = {};
            }
            // temporary check
            if(data.contracts_for || data.proposal){
                data.passthrough.req_number = ++req_number;
                timeouts[req_number] = setTimeout(function(){
                    if(typeof reloadPage === 'function' && data.contracts_for){
                        alert("The server didn't respond to the request:\n\n"+JSON.stringify(data)+"\n\n");
                        reloadPage();
                    }
                    else{
                        $('.price_container').hide();
                    }
                }, 7*1000);
            }

            binarySocket.send(JSON.stringify(data));
        } else {
            bufferedSends.push(data);
        }
    };

    var init = function (es) {
        if(!es){
            events = {};
        }
        if(typeof es === 'object'){
            bufferedSends = [];
            manualClosed = false;
            events = es;
            clearTimeouts();
        }

        if(isClose()){
            binarySocket = new WebSocket(socketUrl);
        }

        binarySocket.onopen = function (){
            var loginToken = getCookieItem('login');
            if(loginToken && !authorized) {
                binarySocket.send(JSON.stringify({authorize: loginToken}));
            }
            else {
                sendBufferedSends();
            }

            if(typeof events.onopen === 'function'){
                events.onopen();
            }

            if(isReady()=== true){
                if (clock_started === false) {
                    page.header.start_clock_ws();
                }
            }
        };

        binarySocket.onmessage = function (msg){
            var response = JSON.parse(msg.data);
            if (response) {
                if(response.hasOwnProperty('echo_req') && response.echo_req.hasOwnProperty('passthrough') && response.echo_req.passthrough.hasOwnProperty('req_number')){
                    clearInterval(timeouts[response.echo_req.passthrough.req_number]);
                    delete timeouts[response.echo_req.passthrough.req_number];
                }
                var type = response.msg_type;
                if (type === 'authorize') {
                    authorized = true;
                    TUser.set(response.authorize);
                    if(typeof events.onauth === 'function'){
                        events.onauth();
                    }
                    send({balance:1, subscribe: 1});
                    sendBufferedSends();
                } else if (type === 'balance') {
                    ViewBalanceUI.updateBalances(response.balance);
                } else if (type === 'time') {
                    page.header.time_counter(response);
                } else if (type === 'logout') {
                    page.header.do_logout(response);
                } else if (type === 'error') {
                    if(response.error.code === 'RateLimit') {
                        $('#ratelimit-error-message')
                            .css('display', 'block')
                            .on('click', '#ratelimit-refresh-link', function () {
                                window.location.reload();
                            });
                    }
                }

                if(typeof events.onmessage === 'function'){
                    events.onmessage(msg);
                }
            }
        };

        binarySocket.onclose = function (e) {
            authorized = false;
            clearTimeouts();

            if(!manualClosed){
                init(1);
            }
            if(typeof events.onclose === 'function'){
                events.onclose();
            }
        };

        binarySocket.onerror = function (error) {
            console.log('socket error', error);
        };
    };

    var close = function () {
        manualClosed = true;
        bufferedSends = [];
        events = {};
        if (binarySocket) {
            binarySocket.close();
        }
    };

    var clear = function(){
        bufferedSends = [];
        manualClosed = false;
        events = {};
    };

    return {
        init: init,
        send: send,
        close: close,
        socket: function () { return binarySocket; },
        clear: clear,
        clearTimeouts: clearTimeouts
    };

})();
