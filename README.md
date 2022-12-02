# blocklist_de_apache_include
Use blocklist.de IPs in Apache Web-Server Konfiguration

1) Make a directory blockiplist in /etc/apache2 directory

2) copy file ban_bad_ip.conf and cron_download_list.sh to this place

3) Include the config in Apache2 main config:
  # Blocklist -> abweisen von Brute Forece Angriffen (48h Latenz)
  Include blockiplist/ban_bad_ip.conf

4) Enable in cron for regulary updates:
3   0,6,12,18 * * *     /etc/apache2/blockiplist/cron_download_list.sh


