# cwRsync Client - Frequently Asked Questions

## General Questions

### Why is it called cwRsync?

cwRsync stands for "Cygwin Rsync" - it's a packaging of Rsync for Windows built using the Cygwin environment.

### Can cwRsync co-exist if cygwin is already installed?

Yes, cwRsync can co-exist with an existing Cygwin installation. However, you should be careful about PATH settings to avoid conflicts.

## Configuration & Usage

### How can I secure connections between cwRsync clients and Unix/Linux servers?

Use SSH as the transport mechanism. cwRsync includes SSH binaries for secure communication. Rsync uses SSH by default, but you can customize SSH behavior with the `-e ssh` option (e.g., `-e "ssh -p 2222"` for custom port or `-e "ssh -i /path/to/key"` for specific key files).

### I want to set up SSH communication without passwords!

You can use SSH key-based authentication:
1. Generate SSH keys using `ssh-keygen`
2. Copy your public key to the remote server
3. Configure SSH to use key authentication

### How can I use cwRsync between two Windows machines within a secure network?

You can set up rsync in daemon mode on one machine and connect to it from the other. For secure connections, consider using SSH tunneling or VPN. For a complete server solution, we offer [cwRsync server](https://itefix.net/cwrsync/server) as a product that simplifies the setup and management of rsync daemon on Windows. We also provide a [secure rsync server](https://itefix.net/cwrsync-copssh-server-kit) solution that combines cwRsync with Copssh for enhanced security.

## Troubleshooting

### Rsync does not recognize Windows paths in a correct manner!

Use Cygwin-style paths (e.g., `/cygdrive/c/folder` instead of `C:\folder`) or use forward slashes. You may also need to use the `--no-implied-dirs` option.

### Permissions on files/directories are cluttered/mixed up!

If you run into permissions problems or your directories' security ACLs are populated by some unwanted groups/users, you need to make sure that:

File `../etc/fstab` exists with at least the content below (with Unix line endings even if the file has only one line!):
```
none /cygdrive cygdrive binary,posix=0,user,noacl 0 0
```

That will instruct Cygwin not to touch permissions.

Additionally, consider using:
- `--chmod` option to set specific permissions
- `--no-perms` to avoid transferring permissions
- `--no-owner --no-group` to skip ownership transfer

### Why does my cwRsync try to load ssh?

By default, rsync tries to use SSH as its transport. If you want to use rsync protocol directly (daemon mode), use the `rsync://` URL format instead of the default SSH transport.

### cwRsync client is too slow!

Performance can be affected by:
- Network speed and latency
- File size and number of files
- Compression settings (use `-z` for compression, but it may slow down on fast networks)
- Block size settings (use `--block-size` option)
- SSH encryption overhead (consider using faster ciphers)

Consider using:
- `--compress` for slow networks
- `--partial` to resume interrupted transfers
- `--whole-file` for fast networks to skip delta-transfer algorithm

Try to remove `/etc/fstab` and use the `--no-perms` option instead. The problem can also be related to real-time anti-virus scanning. Consider file/folder exclusion if possible.



