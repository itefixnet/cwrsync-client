# cwRsync client

![cwRsync client](https://itefix.net/sites/default/files/cwRsync_client.png)

A barebone distribution of Rsync client for Windows. That's all you need to initiate rsync requests from your computer.

## About

cwRsync is a packaging of Rsync for Windows. You can use cwRsync for fast remote file backup and synchronization.

Rsync uses the Rsync algorithm which provides a very fast method for bringing remote files into sync. It does this by sending just the differences in the files across the link, without requiring that both sets of files are present at one of the ends of the link beforehand. At first glance this may seem impossible because the calculation of diffs between two files normally requires local access to both files.

Rsync normally uses ssh for communication. It requires no special privileges for installation. You must, however, have a working ssh system. Alternatively, rsync can run in `daemon' mode, listening on a socket. This is generally used for public file distribution, although authentication and access control are available.

Cygwin is a Linux-like environment for Windows. It consists of a DLL (cygwin1.dll), which emulates substantial Linux API functionality, and a collection of tools.

## Features

The rsync binary provided has following convenient patches:

- transliterate
- timelimit
- ignore case

The package contains the required ssh binaries for secure communication.

## Downloads

Downloads are available via [GitHub Releases](https://github.com/itefixnet/cwrsync-client/releases).

## Resources

- [FAQ](FAQ.md) - Frequently Asked Questions
- [FAQs at itefix.net](https://itefix.net/cwrsync/client/faqs)
- [Release portal at itefix.net](https://itefix.net/releases?field_release_year_value_selective=All&field_release_software_tid_selective=1074&items_per_page=10)

## Additional Products

If you need to serve rsync requests from your computer, you need to set up an rsync daemon, which itefix.net provides [as a paid solution](https://itefix.net/cwrsync/server). itefix.net also provides an [Rsync client helper GUI](https://itefix.net/rsync-client-helper-gui) as a product.

## Links

- [Rsync](http://rsync.samba.org/)
- [Rsync algorithm](http://rsync.samba.org/tech_report/)
- [Cygwin](http://www.cygwin.com/)
- [cwRsync - Rsync for Windows](https://itefix.net/cwrsync)
- [transliterate patch](https://git.samba.org/?p=rsync-patches.git;a=blob;f=transliterate.diff;h=58b2fb26767c17ce32df08942e55159eca672676;hb=ad11a2bcb3aea2faa0c7523fbaaa42e303b0620b)
- [timelimit patch](https://git.samba.org/?p=rsync-patches.git;a=blob;f=time-limit.diff;h=15bf553a21dd8f2a545047ba692b8f811b369201;hb=ad11a2bcb3aea2faa0c7523fbaaa42e303b0620b)
- [ignore case patch](https://git.samba.org/?p=rsync-patches.git;a=blob;f=ignore-case.diff;h=3239ee66b3e415e2dd7ee812118cd1ca5ea6b0c1;hb=ad11a2bcb3aea2faa0c7523fbaaa42e303b0620b)
