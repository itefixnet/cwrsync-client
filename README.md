![cwRsync client](https://itefix.net/sites/default/files/cwRsync_client.png)

# What is cwRsync-client?

cwRsync-client is a bare-bones Windows packaging of the rsync command-line tool. It lets you efficiently backup or synchronize files between local and remote systems using the powerful rsync algorithm, transferring only changed data. The package includes the necessary binaries and SSH support for secure transfers.

## Features

The rsync binary provided has following convenient patches:

- transliterate
- timelimit
- ignore case
- unofficial patch to avoid permissions error for password file option (see build)

# Download & Installation

* Get the latest release
* Visit the repository’s Releases page on GitHub and download the zip for the current version (e.g., cwrsync_6.4.6_x64_free.zip). 
* Extract the package
* Unzip it into a directory of your choosing (e.g., C:\cwrsync).
* Use the provided **cwrsync.cmd** for proper use or guidance

The archive contains rsync.exe, SSH related binaries, and supporting DLLs.


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
