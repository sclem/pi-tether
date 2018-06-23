#### raspberry pi as internet gateway via usb tethering

1. Install raspbian os on the pi

2. Clone the repo and run `apply.sh` with superuser permissions (sudo)

3. Reboot pi

4. Connect pi to router wan port/pc lan, assign router/pc a static ip

##### Notes

* No dhcp - your router/pc connected to the wan port must have a static ip in
the subnet 192.168.1.0/24

* adb command in tether script will auto start usb tethering on a rooted
android running version 7.0 on pi bootup

* this is for educational use only
