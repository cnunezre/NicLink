# NicLink
A python interface for the Chessnut Air. 

pyBind should be installed via pip.
ie: pip install pybind11

# only tested on gnu/linux with a chessnut air. In order to connect with the chessnut air under gnu/linux:


    In order to use NicLink as a user in the wheel group 
    ( group can be arbitrary )
    You must give the user read and write permissions for the Chessnut air.
    This can be done through a udev rule.

    create a 99-chessnutair.rules file: /etc/udev/rules.d/99-chessnutair.rules,
    with the following:

    SUBSYSTEM=="usb", ATTRS{idVendor}:="2d80", /
    ATTRS{idProduct}:="8002", GROUP="wheel", MODE="0660"

    # set the permissions for device files
    KERNEL=="hidraw*", GROUP="wheel", MODE="0660"

    ======== seperator =========


# my chessnutair has the following properties, if your's differs, adjust above

ID:  {vendor id} 2d80 : {product id} 8002

mount poin: /dev/hidraw(0-7)


This gives wheel group access to all of your hidraw devices,
but wheel usualy has sudo access so they have that anyway with sudo

# Good luck.

