#### raspberry pi as internet gateway bridge via usb tethering

1. Install raspbian os on the pi, do not install networkmanager or dhcpcd (uses
   ifupdown and dhclient)

2. Clone the repo

3. Run `apply.sh`

##### Notes

* Your router/device will obtain a dhcp lease directly from the phone. The
  iptables command will automatically assign a ttl of 65 to packets going out
  via usb0 so no router firewall customization is required.

* adb command in tether script will auto start usb tethering on a rooted
android running version 7.0 on pi bootup. change the connectivity service number if you are using a different android version. 33 is for 7.0.

* on first try if you have not used adb shell yet, make sure usb debugging is
  enabled and the pi fingerprint is allowed (popup on phone screen).

* this is for educational use only
