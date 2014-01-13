mooshak-vagrant
======

Vagrant files for configuring an instance of mooshak on a server.

Author
-----
Bhagya Nirmaan Silva (http://www.about.me/bhagyas)

What is mooshak?
----
Mooshak is a system for managing programming contests on the Web. Mooshak suports automatic judging of submitted programs, answering questions about problems and tracking printouts.

Mooshak is available from https://mooshak.dcc.fc.up.pt/

Why mooshak-vagrant?
----
mooshak-vagrant aims to simplify the installation and setting up for mooshak installations for programming contests.

Pre-requisites
-------
- Install vagrant from (http://www.vagrantup.com) on a Linux/Mac OS/ Windows host
- Install Oracle VirtualBox from (https://www.virtualbox.org)
 
Setting up the server
--------
1. Checkout the project or download the files and extract to a location. (example ~/mooshak)
2. Use the terminal/command line and change to the directory the files were extracted.
3. Execute `vagrant up`

Accessing the mooshak installation
------
Visit `http://localhost:8080/~mooshak` from your host machine.

Configuration
-----
You can change the host port by modifying the Vagrantfile available in the project.

Notes
----
Vagrant by default sets the time zone of the guest VM to UTC. You will have to change it manually once the server is set up.

Version history
------
Initial version - Note: This doesn't contain the javac compiler.

Support
------
If you have any questions or issues, please report them over at github. or simply fork the project, fix it and do a pull request. :-)

With love.
<3
