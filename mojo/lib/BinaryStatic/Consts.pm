package BinaryStatic::Consts;

use strict;
use warnings;
use Encode;

sub ticker {
    (
        ['AUD/JPY', 'https://www.binary.com/c/trade.cgi?market=forex&time=10m&form_name=risefall&expiry_type=duration&amount_type=payout&underlying_symbol=frxAUDJPY&H=SOP&currency=USD&amount=100&type=FLASHU&payout=100&l=EN', '99.52%', '100.00%'],
        ['AUD/PLN', 'https://www.binary.com/c/trade.cgi?market=forex&time=10m&form_name=risefall&expiry_type=duration&amount_type=payout&underlying_symbol=frxAUDPLN&H=SOP&currency=USD&amount=100&type=FLASHU&payout=100&l=EN', '98.49%', '100.00%'],
        ['EUR/NZD', 'https://www.binary.com/c/trade.cgi?market=forex&time=10m&form_name=risefall&expiry_type=duration&amount_type=payout&underlying_symbol=frxEURNZD&H=SOP&currency=USD&amount=100&type=FLASHU&payout=100&l=EN', '100.00%', '100.00%'],
        ['EUR/NOK', 'https://www.binary.com/c/trade.cgi?market=forex&time=10m&form_name=risefall&expiry_type=duration&amount_type=payout&underlying_symbol=frxEURNOK&H=SOP&currency=USD&amount=100&type=FLASHU&payout=100&l=EN', '92.42%', '96.46%'],
        ['EUR/JPY', 'https://www.binary.com/c/trade.cgi?market=forex&time=10m&form_name=risefall&expiry_type=duration&amount_type=payout&underlying_symbol=frxEURJPY&H=SOP&currency=USD&amount=100&type=FLASHU&payout=100&l=EN', '98.49%', '100.00%'],
        ['GBP/USD', 'https://www.binary.com/c/trade.cgi?market=forex&time=10m&form_name=risefall&expiry_type=duration&amount_type=payout&underlying_symbol=frxGBPUSD&H=SOP&currency=USD&amount=100&type=FLASHU&payout=100&l=EN', '100.00%', '100.00%'],
        ['EUR/USD', 'https://www.binary.com/c/trade.cgi?market=forex&time=10m&form_name=risefall&expiry_type=duration&amount_type=payout&underlying_symbol=frxEURUSD&H=SOP&currency=USD&amount=100&type=FLASHU&payout=100&l=EN', '100.00%', '100.00%'],
        ['USD/JPY', 'https://www.binary.com/c/trade.cgi?market=forex&time=10m&form_name=risefall&expiry_type=duration&amount_type=payout&underlying_symbol=frxUSDJPY&H=SOP&currency=USD&amount=100&type=FLASHU&payout=100&l=EN', '99.08%', '100.00%'],
        ['EUR/AUD', 'https://www.binary.com/c/trade.cgi?market=forex&time=10m&form_name=risefall&expiry_type=duration&amount_type=payout&underlying_symbol=frxEURAUD&H=SOP&currency=USD&amount=100&type=FLASHU&payout=100&l=EN', '100.00%', '100.00%'],
        ['NZD/USD', 'https://www.binary.com/c/trade.cgi?market=forex&time=10m&form_name=risefall&expiry_type=duration&amount_type=payout&underlying_symbol=frxNZDUSD&H=SOP&currency=USD&amount=100&type=FLASHU&payout=100&l=EN', '100.00%', '100.00%'],
        ['AUD/NZD', 'https://www.binary.com/c/trade.cgi?market=forex&time=10m&form_name=risefall&expiry_type=duration&amount_type=payout&underlying_symbol=frxAUDNZD&H=SOP&currency=USD&amount=100&type=FLASHU&payout=100&l=EN', '100.00%', '100.00%'],
        ['AUD/CHF', 'https://www.binary.com/c/trade.cgi?market=forex&time=10m&form_name=risefall&expiry_type=duration&amount_type=payout&underlying_symbol=frxAUDCHF&H=SOP&currency=USD&amount=100&type=FLASHU&payout=100&l=EN', '100.00%', '100.00%'],
        ['GBP/CAD', 'https://www.binary.com/c/trade.cgi?market=forex&time=10m&form_name=risefall&expiry_type=duration&amount_type=payout&underlying_symbol=frxGBPCAD&H=SOP&currency=USD&amount=100&type=FLASHU&payout=100&l=EN', '100.00%', '100.00%'],
        ['GBP/CZK', 'https://www.binary.com/c/trade.cgi?market=forex&time=10m&form_name=risefall&expiry_type=duration&amount_type=payout&underlying_symbol=frxGBPCZK&H=SOP&currency=USD&amount=100&type=FLASHU&payout=100&l=EN', '88.32%', '92.20%'],
        ['AUD/USD', 'https://www.binary.com/c/trade.cgi?market=forex&time=10m&form_name=risefall&expiry_type=duration&amount_type=payout&underlying_symbol=frxAUDUSD&H=SOP&currency=USD&amount=100&type=FLASHU&payout=100&l=EN', '100.00%', '100.00%'],
        ['EUR/GBP', 'https://www.binary.com/c/trade.cgi?market=forex&time=10m&form_name=risefall&expiry_type=duration&amount_type=payout&underlying_symbol=frxEURGBP&H=SOP&currency=USD&amount=100&type=FLASHU&payout=100&l=EN', '100.00%', '100.00%'],
        ['AUD/CAD', 'https://www.binary.com/c/trade.cgi?market=forex&time=10m&form_name=risefall&expiry_type=duration&amount_type=payout&underlying_symbol=frxAUDCAD&H=SOP&currency=USD&amount=100&type=FLASHU&payout=100&l=EN', '100.00%', '100.00%'],
        ['USD/CAD', 'https://www.binary.com/c/trade.cgi?market=forex&time=10m&form_name=risefall&expiry_type=duration&amount_type=payout&underlying_symbol=frxUSDCAD&H=SOP&currency=USD&amount=100&type=FLASHU&payout=100&l=EN', '100.00%', '100.00%'],
        ['GBP/JPY', 'https://www.binary.com/c/trade.cgi?market=forex&time=10m&form_name=risefall&expiry_type=duration&amount_type=payout&underlying_symbol=frxGBPJPY&H=SOP&currency=USD&amount=100&type=FLASHU&payout=100&l=EN', '97.63%', '100.00%'],
        ['GBP/NZD', 'https://www.binary.com/c/trade.cgi?market=forex&time=10m&form_name=risefall&expiry_type=duration&amount_type=payout&underlying_symbol=frxGBPNZD&H=SOP&currency=USD&amount=100&type=FLASHU&payout=100&l=EN', '100.00%', '100.00%'],
        ['EUR/CAD', 'https://www.binary.com/c/trade.cgi?market=forex&time=10m&form_name=risefall&expiry_type=duration&amount_type=payout&underlying_symbol=frxEURCAD&H=SOP&currency=USD&amount=100&type=FLASHU&payout=100&l=EN', '100.00%', '100.00%'],
        ['GBP/AUD', 'https://www.binary.com/c/trade.cgi?market=forex&time=10m&form_name=risefall&expiry_type=duration&amount_type=payout&underlying_symbol=frxGBPAUD&H=SOP&currency=USD&amount=100&type=FLASHU&payout=100&l=EN', '100.00%', '100.00%'],
        ['Gold/USD', 'https://www.binary.com/c/trade.cgi?market=forex&time=10m&form_name=risefall&expiry_type=duration&amount_type=payout&underlying_symbol=frxXAUUSD&H=SOP&currency=USD&amount=100&type=FLASHU&payout=100&l=EN', '89.43%', '93.16%'],
        ['Silver/USD', 'https://www.binary.com/c/trade.cgi?market=forex&time=10m&form_name=risefall&expiry_type=duration&amount_type=payout&underlying_symbol=frxXAGUSD&H=SOP&currency=USD&amount=100&type=FLASHU&payout=100&l=EN', '89.21%', '93.12%'],
    );
}

sub languages {
    {
        'DE' => 'Deutsch',
        'ID' => 'Bahasa Indonesia',
        'ZH_CN' => decode_utf8('简体中文'),
        'PL' => 'Polish',
        'RU' => decode_utf8('Русский'),
        'PT' => decode_utf8('Português'),
        'ES' => decode_utf8('Español'),
        'FR' => decode_utf8('Français'),
        'EN' => 'English',
    }
}

sub countries {
    return (
        { name => 'Afghanistan', code => 'af' },
        { name => 'Aland Islands', code => 'ax' },
        { name => 'Albania', code => 'al' },
        { name => 'Algeria', code => 'dz' },
        { name => 'American Samoa', code => 'as' },
        { name => 'Andorra', code => 'ad' },
        { name => 'Angola', code => 'ao' },
        { name => 'Anguilla', code => 'ai' },
        { name => 'Antarctica', code => 'aq' },
        { name => 'Antigua and Barbuda', code => 'ag' },
        { name => 'Argentina', code => 'ar' },
        { name => 'Armenia', code => 'am' },
        { name => 'Aruba', code => 'aw' },
        { name => 'Australia', code => 'au' },
        { name => 'Austria', code => 'at' },
        { name => 'Azerbaijan', code => 'az' },
        { name => 'Bahamas', code => 'bs', restricted => 1 },
        { name => 'Bahrain', code => 'bh' },
        { name => 'Bangladesh', code => 'bd' },
        { name => 'Barbados', code => 'bb' },
        { name => 'Belarus', code => 'by' },
        { name => 'Belgium', code => 'be' },
        { name => 'Belize', code => 'bz' },
        { name => 'Benin', code => 'bj' },
        { name => 'Bermuda', code => 'bm' },
        { name => 'Bhutan', code => 'bt' },
        { name => 'Bolivia', code => 'bo' },
        { name => 'Bosnia and Herzegovina', code => 'ba' },
        { name => 'Botswana', code => 'bw' },
        { name => 'Bouvet Island', code => 'bv' },
        { name => 'Brazil', code => 'br' },
        { name => 'British Indian Ocean Territory', code => 'io' },
        { name => 'Brunei Darussalam', code => 'bn' },
        { name => 'Bulgaria', code => 'bg' },
        { name => 'Burkina Faso', code => 'bf' },
        { name => 'Burundi', code => 'bi' },
        { name => 'Cambodia', code => 'kh' },
        { name => 'Cameroon', code => 'cm' },
        { name => 'Canada', code => 'ca' },
        { name => 'Cape Verde', code => 'cv' },
        { name => 'Cayman Islands', code => 'ky' },
        { name => 'Central African Republic', code => 'cf' },
        { name => 'Chad', code => 'td' },
        { name => 'Chile', code => 'cl' },
        { name => 'China', code => 'cn' },
        { name => 'Christmas Island', code => 'cx' },
        { name => 'Cocos (Keeling) Islands', code => 'cc' },
        { name => 'Colombia', code => 'co' },
        { name => 'Comoros', code => 'km' },
        { name => 'Congo', code => 'cg' },
        { name => 'Congo, The Democratic Republic of the', code => 'cd' },
        { name => 'Cook Islands', code => 'ck' },
        { name => 'Costa Rica', code => 'cr', restricted => 1 },
        { name => 'Cote D&#39;Ivoire', code => 'ci' },
        { name => 'Croatia', code => 'hr' },
        { name => 'Cuba', code => 'cu' },
        { name => 'Cyprus', code => 'cy' },
        { name => 'Czech Republic', code => 'cz' },
        { name => 'Denmark', code => 'dk' },
        { name => 'Djibouti', code => 'dj' },
        { name => 'Dominica', code => 'dm' },
        { name => 'Dominican Republic', code => 'do' },
        { name => 'Ecuador', code => 'ec' },
        { name => 'Egypt', code => 'eg' },
        { name => 'El Salvador', code => 'sv' },
        { name => 'Equatorial Guinea', code => 'gq' },
        { name => 'Eritrea', code => 'er' },
        { name => 'Estonia', code => 'ee' },
        { name => 'Ethiopia', code => 'et' },
        { name => 'Falkland Islands (Malvinas)', code => 'fk' },
        { name => 'Faroe Islands', code => 'fo' },
        { name => 'Fiji', code => 'fj' },
        { name => 'Finland', code => 'fi' },
        { name => 'France', code => 'fr' },
        { name => 'French Guiana', code => 'gf' },
        { name => 'French Polynesia', code => 'pf' },
        { name => 'French Southern Territories', code => 'tf' },
        { name => 'Gabon', code => 'ga' },
        { name => 'Gambia', code => 'gm' },
        { name => 'Georgia', code => 'ge' },
        { name => 'Germany', code => 'de' },
        { name => 'Ghana', code => 'gh' },
        { name => 'Gibraltar', code => 'gi' },
        { name => 'Greece', code => 'gr' },
        { name => 'Greenland', code => 'gl' },
        { name => 'Grenada', code => 'gd' },
        { name => 'Guadeloupe', code => 'gp' },
        { name => 'Guam', code => 'gu' },
        { name => 'Guatemala', code => 'gt' },
        { name => 'Guernsey', code => 'gg', restricted => 1 },
        { name => 'Guinea', code => 'gn' },
        { name => 'Guinea-Bissau', code => 'gw' },
        { name => 'Guyana', code => 'gy' },
        { name => 'Haiti', code => 'ht' },
        { name => 'Heard Island and McDonald Islands', code => 'hm' },
        { name => 'Holy See (Vatican City State)', code => 'va' },
        { name => 'Honduras', code => 'hn' },
        { name => 'Hong Kong', code => 'hk', restricted => 1 },
        { name => 'Hungary', code => 'hu' },
        { name => 'Iceland', code => 'is' },
        { name => 'India', code => 'in' },
        { name => 'Indonesia', code => 'id' },
        { name => 'Iran, Islamic Republic of', code => 'ir', restricted => 1 },
        { name => 'Iraq', code => 'iq' },
        { name => 'Ireland', code => 'ie' },
        { name => 'Isle of Man', code => 'im' },
        { name => 'Israel', code => 'il' },
        { name => 'Italy', code => 'it' },
        { name => 'Jamaica', code => 'jm' },
        { name => 'Japan', code => 'jp', restricted => 1 },
        { name => 'Jersey', code => 'je', restricted => 1 },
        { name => 'Jordan', code => 'jo' },
        { name => 'Kazakhstan', code => 'kz' },
        { name => 'Kenya', code => 'ke' },
        { name => 'Kiribati', code => 'ki' },
        { name => 'Korea, Democratic People&#39;s Republic of', code => 'kp' },
        { name => 'Korea, Republic of', code => 'kr' },
        { name => 'Kuwait', code => 'kw' },
        { name => 'Kyrgyzstan', code => 'kg' },
        { name => 'Lao People&#39;s Democratic Republic', code => 'la' },
        { name => 'Latvia', code => 'lv' },
        { name => 'Lebanon', code => 'lb' },
        { name => 'Lesotho', code => 'ls' },
        { name => 'Liberia', code => 'lr' },
        { name => 'Libyan Arab Jamahiriya', code => 'ly' },
        { name => 'Liechtenstein', code => 'li' },
        { name => 'Lithuania', code => 'lt' },
        { name => 'Luxembourg', code => 'lu' },
        { name => 'Macao', code => 'mo' },
        { name => 'Macedonia', code => 'mk' },
        { name => 'Madagascar', code => 'mg' },
        { name => 'Malawi', code => 'mw' },
        { name => 'Malaysia', code => 'my', restricted => 1 },
        { name => 'Maldives', code => 'mv' },
        { name => 'Mali', code => 'ml' },
        { name => 'Malta', code => 'mt', restricted => 1 },
        { name => 'Marshall Islands', code => 'mh' },
        { name => 'Martinique', code => 'mq' },
        { name => 'Mauritania', code => 'mr' },
        { name => 'Mauritius', code => 'mu' },
        { name => 'Mayotte', code => 'yt' },
        { name => 'Mexico', code => 'mx' },
        { name => 'Micronesia, Federated States of', code => 'fm' },
        { name => 'Moldova, Republic of', code => 'md' },
        { name => 'Monaco', code => 'mc' },
        { name => 'Mongolia', code => 'mn' },
        { name => 'Montenegro', code => 'me' },
        { name => 'Montserrat', code => 'ms' },
        { name => 'Morocco', code => 'ma' },
        { name => 'Mozambique', code => 'mz' },
        { name => 'Myanmar', code => 'mm' },
        { name => 'Namibia', code => 'na' },
        { name => 'Nauru', code => 'nr' },
        { name => 'Nepal', code => 'np' },
        { name => 'Netherlands', code => 'nl' },
        { name => 'Netherlands Antilles', code => 'an' },
        { name => 'New Caledonia', code => 'nc' },
        { name => 'New Zealand', code => 'nz' },
        { name => 'Nicaragua', code => 'ni' },
        { name => 'Niger', code => 'ne' },
        { name => 'Nigeria', code => 'ng' },
        { name => 'Niue', code => 'nu' },
        { name => 'Norfolk Island', code => 'nf' },
        { name => 'Northern Mariana Islands', code => 'mp' },
        { name => 'Norway', code => 'no' },
        { name => 'Oman', code => 'om' },
        { name => 'Pakistan', code => 'pk' },
        { name => 'Palau', code => 'pw' },
        { name => 'Palestinian Territory, Occupied', code => 'ps' },
        { name => 'Panama', code => 'pa' },
        { name => 'Papua New Guinea', code => 'pg' },
        { name => 'Paraguay', code => 'py' },
        { name => 'Peru', code => 'pe' },
        { name => 'Philippines', code => 'ph' },
        { name => 'Pitcairn', code => 'pn' },
        { name => 'Poland', code => 'pl' },
        { name => 'Portugal', code => 'pt' },
        { name => 'Puerto Rico', code => 'pr' },
        { name => 'Qatar', code => 'qa' },
        { name => 'Reunion', code => 're' },
        { name => 'Romania', code => 'ro' },
        { name => 'Russian Federation', code => 'ru' },
        { name => 'Rwanda', code => 'rw' },
        { name => 'Saint Helena', code => 'sh' },
        { name => 'Saint Kitts and Nevis', code => 'kn' },
        { name => 'Saint Lucia', code => 'lc' },
        { name => 'Saint Pierre and Miquelon', code => 'pm' },
        { name => 'Saint Vincent and the Grenadines', code => 'vc' },
        { name => 'Saint-Barthélemy', code => 'bl' },
        { name => 'Saint-Martin (French part)', code => 'mf' },
        { name => 'Samoa', code => 'ws' },
        { name => 'San Marino', code => 'sm' },
        { name => 'Sao Tome and Principe', code => 'st' },
        { name => 'Saudi Arabia', code => 'sa' },
        { name => 'Senegal', code => 'sn' },
        { name => 'Serbia', code => 'rs' },
        { name => 'Seychelles', code => 'sc' },
        { name => 'Sierra Leone', code => 'sl' },
        { name => 'Singapore', code => 'sg' },
        { name => 'Slovakia', code => 'sk' },
        { name => 'Slovenia', code => 'si' },
        { name => 'Solomon Islands', code => 'sb' },
        { name => 'Somalia', code => 'so' },
        { name => 'South Africa', code => 'za' },
        { name => 'South Georgia and the South Sandwich Islands', code => 'gs' },
        { name => 'Spain', code => 'es' },
        { name => 'Sri Lanka', code => 'lk' },
        { name => 'Sudan', code => 'sd' },
        { name => 'Suriname', code => 'sr' },
        { name => 'Svalbard and Jan Mayen', code => 'sj' },
        { name => 'Swaziland', code => 'sz' },
        { name => 'Sweden', code => 'se' },
        { name => 'Switzerland', code => 'ch' },
        { name => 'Syrian Arab Republic', code => 'sy' },
        { name => 'Taiwan, Province of China', code => 'tw' },
        { name => 'Tajikistan', code => 'tj' },
        { name => 'Tanzania, United Republic of', code => 'tz' },
        { name => 'Thailand', code => 'th' },
        { name => 'Timor-Leste', code => 'tl' },
        { name => 'Togo', code => 'tg' },
        { name => 'Tokelau', code => 'tk' },
        { name => 'Tonga', code => 'to' },
        { name => 'Trinidad and Tobago', code => 'tt' },
        { name => 'Tunisia', code => 'tn' },
        { name => 'Turkey', code => 'tr' },
        { name => 'Turkmenistan', code => 'tm' },
        { name => 'Turks and Caicos Islands', code => 'tc' },
        { name => 'Tuvalu', code => 'tv' },
        { name => 'Uganda', code => 'ug' },
        { name => 'Ukraine', code => 'ua' },
        { name => 'United Arab Emirates', code => 'ae' },
        { name => 'United Kingdom', code => 'gb' },
        { name => 'United States', code => 'us', restricted => 1 },
        { name => 'United States Minor Outlying Islands', code => 'um', restricted => 1 },
        { name => 'Uruguay', code => 'uy' },
        { name => 'Uzbekistan', code => 'uz' },
        { name => 'Vanuatu', code => 'vu' },
        { name => 'Venezuela', code => 've' },
        { name => 'Vietnam', code => 'vn' },
        { name => 'Virgin Islands, British', code => 'vg' },
        { name => 'Virgin Islands, U.S.', code => 'vi', restricted => 1 },
        { name => 'Wallis and Futuna', code => 'wf' },
        { name => 'Western Sahara', code => 'eh' },
        { name => 'Yemen', code => 'ye' },
        { name => 'Zambia', code => 'zm' },
        { name => 'Zimbabwe', code => 'zw' }
    );
}

1;