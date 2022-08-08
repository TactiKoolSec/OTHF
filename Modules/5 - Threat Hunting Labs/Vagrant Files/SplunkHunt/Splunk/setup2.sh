sudo -u vagrant bash -c 'cat << EOF > /opt/splunk/etc/system/local/user-seed.conf
[user_info]
USERNAME = admin
HASHED_PASSWORD=\$6\$0BwPckyKbXGKLttD\$bd1GnHiRsglE6hB34rf/cZ9NDEqZR2jqTFtOhitXIZaqWHzRyVkiJGdVUnrGBTQtuaUOruaWM0/NIvUbAtA7p/
EOF'
sudo /opt/splunk/bin/splunk start --accept-license --answer-yes --no-prompt
sudo /opt/splunk/bin/splunk stop
sudo /opt/splunk/bin/splunk enable boot-start -systemd-managed 1
sudo /opt/splunk/bin/splunk enable listen 9997
sudo /opt/splunk/bin/splunk start
sudo /opt/splunk/bin/splunk add index threathunt

