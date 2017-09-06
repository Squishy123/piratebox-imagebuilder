# PIRATEBOX IMAGEBUILDER
## Author: Christian Wang
A customizable image generator for making piratebox images

### INSTRUCTIONS
Execute script install-lede-dev-env.sh.

Then move the Makefile to the lede directory using the command :
mv Makefile lede

And move the ar71xx-generic.mk file into lede/include folder using the command :
mv ar71xx-generic.mk lede/include

### COMPATIBLE SYSTEMS
Currently only the WR902AC is supported for imagebuilding. All other supported devices can be built using the official piratebox imagebuilder.

### IMAGE BUILDING AND INSTALLATION
Execute the command :
make imagebuilder
make WR902AC
to make a piratebox image for TL-902AC router

Download the [piratebox.zip](http://development.piratebox.de/target_piratebox_ar71xx-generic/install_piratebox.zip) and extract it into your USB

Plug the USB into the router and go to the router's config panel (usually can be found at http://tplinkwifi.net)

Go to the advanced settings, firmware upgrade. Upload the factory image found in the lede/target__ar71xx directory. Wait for the install, should take around 20-30 mins.
