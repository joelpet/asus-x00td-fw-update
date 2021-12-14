# Asus Zenfone Max Pro M1 firmware update

This is a tool for extracting firmware from official Asus update packages for
the [ZenFone Max Pro
(ZB602KL)](https://www.asus.com/supportonly/ZenFone%20Max%20Pro(M1)(ZB602KL)/HelpDesk_BIOS/).

## Usage

1. Download `UL-ASUS_X00T-WW-17.2017.2012.438-user.zip` to a directory `in/`.
2. Run `make out/fw_update.zip`.
3. Use `adb sideload out/fw_update.zip` in conjunction with a custom recovery to
   install the package.

## License

GNU General Public License v3.0 or later.

See COPYING to see the full text.
