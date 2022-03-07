# Previous Emulation

## Set-up

After a significant amount of experimentation, I've found Xpra is the best solution for running this remotely.

This requires some configuration.

### Install Xpra

Simple: 

`sudo apt-get install xpra`

### Configure Xpra to launch on Systemd

We define the service:

`/etc/systemd/system/xpra@.service`

```
[Unit]
Description=xpra display

[Service]
Type=simple
User=%i
EnvironmentFile=/etc/conf.d/xpra
ExecStart=/usr/bin/xpra start :100 --no-daemon --systemd-run=no --bind-tcp=0.0.0.0:5900

[Install]
WantedBy=multi-user.target
```

`/etc/conf.d/xpra`

```
ubuntu=:666
```

And then enable it:

`sudo systemctl enable --now xpra@ubuntu.service`

Check the status with:

`sudo systemctl status xpra@ubuntu.service`

## Launch an X11 app

### xeyes

Test a simple solution:

```
$ export DISPLAY=:100
$ xeyes
```

### Simple app in Docker

Test a simple app in Docker:

```
$ cd gnuplot
$ xhost +  # Consider a more secure solution
$ ./build.sh
$ ./launch.sh 

```

In the `gnuplot` interface, test:

```
plot sin(x)
```

### Launch Previous in Docker

```
$ cd previous-x11
$ xhost +  # Consider a more secure solution
$ ./build.sh
$ ./launch.sh
```



