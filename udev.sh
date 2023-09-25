echo  'KERNEL=="ttyUSB*", ATTRS{idVendor}=="10c4", ATTRS{idProduct}=="ea60",ATTRS{serial}=="0002", MODE:="0777", GROUP:="dialout", SYMLINK+="controller"' >/etc/udev/rules.d/controller.rules
echo  'KERNEL=="ttyUSB*", ATTRS{idVendor}=="1a86", ATTRS{idProduct}=="7523",MODE:="0777", SYMLINK+="voltage_rec"' >/etc/udev/rules.d/voltage_rev.rules

service udev reload
sleep 2
service udev restart
	

