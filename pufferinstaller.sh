#!/bin/sh
echo Ricerca aggiornamenti 
echo Script By MrBruschetta on Telegram
wait 4
echo Installazione degli ultimi aggiornamenti del system linux...
wait 1
sudo apt-get install yum
sudo apt-get update
yum -y update
sudo apt-get upgrade
echo Installazione dipendenze...
wait 2
curl -s https://packagecloud.io/install/repositories/pufferpanel/pufferpanel/script.deb.sh | sudo bash
echo Installazione pannello...
wait 2
apt-get install pufferpanel
systemctl enable pufferpanel
echo Avvio la configurazione firewall
wait 2
ufw allow 8080
ufw allow 5657
echo Configura il tuo utente personale per accedre al pannello!
wait 2
pufferpanel user add
echo Avvio del servizio in corso...
wait 2
systemctl start pufferpanel
echo Il Pannello è stato installato correttamente sulla porta 8080 della tua macchina!
echo Vuoi vedere come configurare il tuo dominio con pufferpanel? Segui questa guida: https://docs.pufferpanel.com/en/2.x/guides/nginx.html
echo Script by @MrBruschetta on Telegram