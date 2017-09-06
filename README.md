# PIRATEBOX IMAGEBUILDER
## Author: Christian Wang
A customizable image generator for making piratebox images

### INSTRUCTIONS
Execute script ./install-lede-dev-env.sh.

Execute script ./image-generator.sh to start the image-generation process

### COMPATIBLE SYSTEMS
All LEDE-supported piratebox devices using the AR71xx architecture

Added Support For Snapshot builds including:
TL-WR902AC

### IMAGE BUILDING AND INSTALLATION
#### Example Build Generation
To make a piratebox image for TL-902AC router execute the commands :
cd lede
make imagebuilder
make WR902AC


Download the [piratebox.zip](http://development.piratebox.de/target_piratebox_ar71xx-generic/install_piratebox.zip) and extract it into your USB

Plug the USB into the router and go to the router's config panel (usually can be found at http://tplinkwifi.net)

Go to the advanced settings, firmware upgrade. Upload the factory image found in the lede/target__ar71xx directory. Wait for the install, should take around 20-30 mins.
