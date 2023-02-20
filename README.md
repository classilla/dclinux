# Dusted-off Dreamcast Linux (DODCL)

[Another Old VCR Revival!](https://oldvcr.blogspot.com/2023/02/dusting-off-dreamcast-linux.html)

This is a revised version of the [the original 2001 Dreamcast Linux](http://web.archive.org/web/20060714170358/http://www.m17n.org/linux-sh/dreamcast/) with QoL improvements for modern users and a more straightforward build-burn process. Its primary purpose is to serve as a historical reconstruction, not necessarily a production-ready standard distribution. It exists under the same license as Linux.

The aim with Dusted-off DC Linux is to maintain compatibility with older binaries built for 2K1 DC Linux yet add additional features that make it more convenient to work with. Most of all, a DODCL build should feel nearly indistinguishable in user experience from the original 2K1 DC Linux. No features or tools should be removed if at all possible, and in-place upgrades should be avoided.

## Features

* Hardware support: can work with just a Maple-bus keyboard
  * Dreamcast keyboard
  * Dreamcast graphics as 2D `fbcon` framebuffer @ 640x480x32bpp, on NTSC TVs or VGA displays (VGA adapter optional)
  * Dreamcast controllers (but not VMUs, memory cards or rumble packs: they can stay connected, but they will not be enumerated or utilized)
  * GD-ROM
  * Dreamcast mouse (optional except for XFree86)
  * Serial port support (optional)
  * Broadband Adapter (optional)
* Self-contained live CD
  * Linux 2.4.5 (I told you this was a historical preservation)
  * DHCP autoconfigures IP address and DNS on systems with BBA
  * Automounts `/netfs` and `/tmp` over NFS if a compatible server is detected (see below)
  * Optional swap-over-NFS (see below)
  * Listens on Telnet, FTP and Gopher ports out of the box on systems with BBA
  * [`chrony`](https://chrony.tuxfamily.org/) pre-configured for NTP (see below)
  * no `systemd` (this shall be considered a feature)
* Batteries included on disc
  * XFree86 in its original version from O.G. 2K1 DC Linux (mouse required) (Wayland? ha ha ha)
  * Lynx and `w3m` in their original versions from O.G. 2K1 DC Linux
  * PrBoom and MAME in their original versions from O.G. 2K1 DC Linux (*Doom* shareware WAD included, bring your own MAME ROMs)
  * [Dropbear `ssh`](https://matt.ucc.asn.au/dropbear/dropbear.html) for SSH connections
  * [Crypto Ancienne `carl`](https://github.com/classilla/cryanc) for HTTP and HTTPS connections
  * [`socat`](http://www.dest-unreach.org/socat/), [`micro_inetd`](https://www.acme.com/software/micro_inetd/) and `netcat` for mischief
  * `gcc` and `g++` 3.1, GNU `make` 3.79.1, `awk`, and Perl 5.6.0 for more mischief
  * Source and patches for what we have now being collected in `/usr/src`

## Before you file an issue

* Asking us to do something violating the core aims of this project, in our sole judgment, will get your issue marked invalid and possibly deleted. If you don't understand what DODCL is trying to do, **don't use it.**

* We maintain this for fun. If you intend to use this for production purposes, you're on your own.

* **There are many security holes, and some are even intentional.** If you intend to use this for production purposes, see the previous dot point. You probably want [NetBSD/dreamcast](http://wiki.netbsd.org/ports/dreamcast/) instead which is much more modern.

* If you're reporting a bug, exact steps to reproduce are required. Bugs we can't reproduce will be closed as invalid, and bugs we can't fix because we lack the source may be closed with regrets to allow the worklist to be better focused. Unfortunately we lack source code for large portions of the operating system currently so this is very likely to occur for many reports. Nothing personal: see the dot points above.

* Everything has to fit onto one CD (GD-R? ha ha ha). If you want your favourite tool, game or application included as standard, you need to explain why it's worth the space (which we will decide based on your argument in our sole judgment), show it can be included without upsetting anything else, demonstrate it builds by including a binary you built, and provide steps for us to replicate the build process. **Requests opened without these four things will be marked invalid and possibly deleted.** Again, nothing personal: we're dealing with a limited resource here and people will naturally disagree about what they find important.

* Don't bother posting requests to support your favourite device unless you're stepping up to do the work. Please, seriously, don't.

## Things we know don't work

Don't file issues about these.

* No sound (`/dev/dsp` doesn't work)
* No modem support
* No VMU support, no memory card support, no rumble pack support
* No light gun support, no fishing controller support, no microphone support, no anything controller support other than the DC controllers
* No 3D acceleration; 2D video performance isn't great
* No PAL TV support (use VGA)
* BBA prone to dropouts under high activity (see the section on NFS below)
* No support for the hardware clock (see the section on NTP below)

Some of these things can't be fixed until we get the source code. Unfortunately the source for 2K1 DC Linux and its boot components was stored on a now-defunct FTP server, but we're still looking. Some components such as the kernel and SH-Boot (but not eCos) are still available from the [LinuxSH CVS server](http://linuxsh.cvs.sourceforge.net/). For everything that *we* built, we include the source (or patches against source) in `/usr/src`.

## How to use the disc

DODCL is distributed as components, not as a `.cdi` image or `.bin`/`.cue` you can directly burn. We're willing to add instructions here for other operating systems, but here's how it would work for Linux and probably most BSDs:

* **Ensure your network is properly configured to protect an insecure system. Never run DODCL outside of a firewall.** There is no password protection unless you configure it. There is remote login support unless you disable it. There are known security vulnerabilities in this version of the Linux kernel. **Any bot banging on login ports will get `root` immediately.** Just because the disc is immutable doesn't mean it can't get pwned while it's up and running, or worse, be used as a jumping-off point to attack the rest of your network. If you don't know what you're doing, **stop!**

* Ensure you have `wodim` and `mkisofs` (or `genisoimage`, which is compatible and what we use) installed. Your CD-R burner must support overburn, XA (multi-session) and DAO/TAO modes, which pretty much every modern burner will.

* You need a copy of `IP.BIN`. This contains copyrighted Sega data which [may or may not be distributable](https://dcemulation.org/?title=IP.BIN), so we don't include it. If you have made homebrew DC titles before, you know what this is and probably have it already.

* Make any needed adjustments to the tree before continuing.

* Insert a blank CD-R into your burner and type `./BURN.sh [path to IP.BIN] [path to burner]`. For example, on my system, I type `./BURN.sh ../IP.BIN /dev/sr2`.

* Put the disc in your Dreamcast and feel the power as you turn it on. If you are using a VGA adapter, attach it first and connect it to your display before booting the operating system. Other devices may be hotplugged.

* Log in as `root` with no password. You will get a shell prompt. If you want to switch to X, you can run it with `startx` (exit from the window manager context menu or Control-Alt-Backspace will forcibly kill the X server and return you to the prompt). Note that X uses a lot of the DC's limited memory and you should really set up a swapfile to do anything practical with it (see the NFS section).

* You can simply power the Dreamcast off when you're done using it; you don't have to do a formal shutdown. Remember to save any data in open applications and quit them before doing so, of course.

If you're burning coasters that the Dreamcast keeps treating as audio CDs, or the burn script plain doesn't work, ensure your drive can burn at the rated speed (we try to burn as close to 4x as possible; my USB Apple SuperDrive burns fine at 10x). You might also try changing `-C 0,11700` in `./BURN.sh` to a value like `-C 0,11702`.

## NFS

NFS (Network File System) lets you mount remote filesystems on other servers locally. If your Dreamcast has a Broadband Adapter, DODCL not only supports NFS but also supports swap-over-NFS to give you more virtual memory. Almost any modern OS can act as an NFS server.

Without an NFS server, your DC Linux machine will operate standalone. This is supported and works, but most portions of the filesystem will be read-only and the remainder must fit into the RAM disk. Remember: your DC has only 16MB of RAM, which is now also being occupied by the RAM disk, kernel and any running processes, and there is no swap. A lot of things will still work fine but nothing will persist.

If the hostname `nfs` can be resolved, DODCL will automatically try to mount volumes from it. The relevant section of `/etc/fstab` looks like this:

```
nfs:/netfs/dreamcast/linux /netfs nfs rw,hard,intr,rsize=4096,wsize=4096 0 0
nfs:/netfs/dreamcast/linux/tmp /tmp nfs rw,hard,intr,rsize=4096,wsize=4096 0 0
```

This will automount `/netfs/dreamcast/linux` on `/netfs` and `/netfs/dreamcast/linux/tmp` on `/tmp` when the system boots. The `rsize` and `wsize` have been selected for good performance with the BBA. You can of course mount additional filesystems to `/mnt` or other locations with the `mount -t nfs` command after the system is booted; we recommend using the same options (i.e., `-o rw,hard,intr,rsize=4096,wsize=4096`).

Instructions on how to configure an NFS server are beyond the scope of this document, but for simplicity our local NetBSD NFS server has this for its `/etc/exports`:

```
/netfs -alldirs -mapall=censored:censored -noresvport -noresvmnt
```

This forces all files to be created with `uid` `censored` and `gid` `censored` (which is fine, since there's only one `uid` on DODCL anyway) and allows subdirectories to be mounted.

With `/netfs` mounted, `/netfs/startup.sh` will be run if it exists and is executable as part of startup, and `/netfs/profile`, `/netfs/csh.cshrc`, `/netfs/csh.login` and `/netfs/csh.logout` will be executed if they exist and are executable as part of shell startup after executing the defaults in `/etc`. The shell defaults to `bash`, so if you want to use `tcsh` like the other beautiful people, put a line like `exec /usr/bin/tcsh` into `/netfs/profile`. You can also set environment variables, aliases, paths, etc. within these files.

If you intend to compile programs on the Dreamcast or run a lot of X apps, you'll really need additional memory or your DC may insidiously run out of space and freeze. DODCL supports **swap-over-NFS**, allowing you to use the NFS mount as swap. This can be a source of additional system instability if you have a slow network, so it is not the default.

To set up the swapfile, create a file named `swapfile` of the desired size on the NFS server in what gets mapped to `/netfs` (I use a 268,435,456 byte file named `/netfs/dreamcast/linux/swapfile` giving me an additional 256MB of headroom). On the Dreamcast, type `mkswap /netfs/swapfile` to do the initial configuration. Once this is done, any time you want to enable swap, `/etc/init.d/nfsswap.sh start` brings it up and `/etc/init.d/nfsswap.sh stop` disables it. This requires `/dev/loop/7`; keep in mind that Linux 2.4 has a hard cap of eight loop devices.

NFS is intrinsically far slower than a local disk, and swap-over-NFS is far slower than ordinary virtual memory. Expect that things like compilation and `configure` scripts will require much more time than on a comparable CPU with local disks.

The Dreamcast Broadband Adapter uses the Realtek 8139 NIC and the driver really stinks in this version of the kernel, something we intend to address if possible in the future. Most of the time this is okay but if you get errors like `eth0: Too much work at interrupt, IntrStatus=0x0010.` on the console, you're being bit by driver bugs. There is no way around this issue other than to reduce your network activity, such as logging out if you're simultaneously connected remotely, or stop heavy jobs that might cause a lot of NFS reads and writes. Your Dreamcast may freeze if this flaw interrupts a critical swap operation. Sorry.

## NTP

NTP (Network Time Protocol) synchronizes your Dreamcast's clock with external time servers supporting the NTP protocol. This is particularly important because DC Linux doesn't support the hardware clock and the time tends to run slow with heavy I/O, leading to "clock slew" errors with things like `make`.

DODCL provides a pre-built [`chrony`](https://chrony.tuxfamily.org/), which is a modern NTP client-server codebase, and a basic configuration file in `/usr/etc/chrony.conf`:

```
server ntp iburst
pool pool.ntp.org iburst
driftfile /var/lib/chrony/drift
makestep 1 3
```

This will automatically try to use a local timesource named `ntp` along with the North American pool at `pool.ntp.org`. Either or both will be used depending on their availability. If neither are available, `chronyd` will simply run in the background. You can use `chronyc` to check the source(s) being consulted and statistics. The time is stepped initially and then more slowly slewed thereafter.

The time is not synchronized to or from the Dreamcast's hardware clock. If your DC is constantly asking for the time when you turn it on, you may need to [replace the battery](http://oldvcr.blogspot.com/2022/11/refurb-weekend-sega-dreamcast.html). On the other hand, you needn't worry about properly setting it if you're just going to boot Linux because it will figure it out automatically.

The default timezone for DODCL is JST, as a tip of the hat to the original maintainers. Because `/etc/localtime` is part of the `initrd` and a little tricky to change in place, a simpler solution is to just change the `TZ` environment variable in your startup scripts (see above). For example, I do `export TZ=PST8PDT` in `/netfs/profile`, which sets my shell to North American Pacific time (PST/PDT). The timezones in `/usr/share/zoneinfo` are up to date with 2023 daylight savings, copied directly from Fedora 37.

## Other notes

* The IP address reported by eCos on startup comes from your Dreamcast's settings. Use the BBA disc or something like Quake III Arena to configure it. While it waits to timeout, you can connect to port 9000 to interrupt the boot (send Control-C) and do other interesting things. A serial cable connected to the rear port at 115200bps will also work. eCos' network settings are separate from Linux's.
* [`fbcat`](https://github.com/jwilk/fbcat) is included and can capture the Dreamcast framebuffer to a Netpbm PPM file; do `fbcat > out.ppm`. This works from a remote session, within X or on the console (source in `/usr/src`).
* The `clear` command is changed to undo the kernel's default scroll settings if you run it from a shell logged into the console. This is a shell script now, with `/usr/bin/cls` being the original. See also `tuxclear`, which restores the SuperH Tux logo (source in `/usr/src`) and `tvclear` (shell script), which sets a better window for CRT TVs, though many programs that drive the screen directly just ignore it.
* The gopher server is in `/usr/bin/gopherdemo`. It's a Perl script you can just change before burning and right now is not much more than a hello-world proof of concept. We might migrate this to [Bucktooth](gopher://gopher.floodgap.com/1/buck) in a future version.
* PrBoom (`prboom`) can be very fussy about starting. I've seen it work with `fbset -depth 16` and then not work with it, but then work with `fbset -depth 32`. My best conclusion is the colour depth doesn't matter and you should simply sacrifice a live chicken or expensive bottle of wine if you want to play. Swap-over-NFS does seem to help. Performance is not great, though turning off transparency and shrinking the viewport improves it a bit.
* I never got SDL MAME to work with the framebuffer (`xmame.SDL`), regardless of framebuffer colour depth or quantity of dead chickens, but it does work in X11 (`xmame.X11`). This is an old MAME and ROM CRCs and filenames may differ. ROM ZIPs should go in `/var/lib/xmame`, but since this is read-only, it may be simpler to just mount an NFS volume at that mountpoint. The DC controller D-pad is pre-configured to work as a joystick, Y is 1P Credit, and START is 1P Start.

## License

Licenses are determined by the individual packages. Linux itself and anything we added and wrote ourselves are either public domain or [GPLv2](https://www.kernel.org/doc/html/latest/process/license-rules.html). Have fun.
