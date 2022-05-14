#!/bin/bash
echo "TENSION NA LE PURA KHANDAN KA KUNDALI BTAYEGE(spy)"
sleep 0.1
read -p "bhai ip address bta abhi g@nd marta hu iski:" ip
sleep 1
echo "ip ka pura janam kundali nikal raha hu"
whois $ip
echo "ip ka kya firewall check krna raha hu"
wafw00f $ip
echo "bhai backend ka services check krlete ha"
whatweb $ip
echo "SAALE KA LOCATION PATA KRTE HAI"
curl https://api.hackertarget.com/geoip/?q=$ip
echo "nmap bhi kre ke pura ghar me khidke se dekh lete hai"
nmap -Pn -sV  $ip
echo "nikto krna hai kya"
read nikto
if [ $nikto ]; then
nikto --url $ip
else 
    echo "kam hogaya bhai"
fi
