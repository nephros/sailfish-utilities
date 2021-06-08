# !!BIG FAT WARNING!!

These packages replace a system package.

This may cause unknown issues and breakage including device "bricking" down the line.
Remember to replace these RPMs with official ones ASAP (i.e. there is a fix for the Bluetooth problems), and ESPECIALLY before any attempts update your device.

This command *should* reinstall the official one:

    pkcon refresh && pkcon install --allow-downgrade --allow-reinstall sailfish-utilities
