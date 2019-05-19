The mod_harbour for Apache on Linux uses a different approach that turns it much much faster and lighter.

**0.** Changes to build Harbour:

In both config/dyn.mk and config/lib.mk HB_DYN_LIBS add hbcplr \


**1.** It has been built using the Windows 10 bash:

https://www.howtogeek.com/249966/how-to-install-and-use-the-linux-bash-shell-on-windows-10/

**2.** Install this from the Windows 10 bash:

sudo apt-get install apache2-dev

**3.** go to /home/<username> and type this:

apxs -n harbour -g

This will create a harbour folder with all the required files inside it

**4.** In order to test this do:

make all

sudo make install

sudo make test

**5.** Copy ~/harbour/lib/linux/gcc/libharbour.so.3.2.0 to /var/www/html

cp ~/harbour/lib/linux/gcc/libharbour.so.3.2.0 /var/www/html

**6.** Now replace your mod_harbour.c with the one provided here and repeat the step 4

***

[![](https://bitbucket.org/fivetech/screenshots/downloads/harbour.jpg)](https://harbour.github.io "The Harbour Project")
<a href="https://httpd.apache.org/" alt="The Apache HTTP Server Project"><img width="150" height="150" src="http://www.apache.org/img/support-apache.jpg"></a>