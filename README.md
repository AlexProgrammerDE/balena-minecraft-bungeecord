![balena Minecraft Bungeecord](images/logo.png)

# Bungeecord for the Raspberry Pi [![CodeFactor](https://www.codefactor.io/repository/github/alexprogrammerde/balena-minecraft-bungeecord/badge)](https://www.codefactor.io/repository/github/alexprogrammerde/balena-minecraft-bungeecord) [![Codacy Badge](https://api.codacy.com/project/badge/Grade/e1dbd91e4e7548b19e5e839290260796)](https://www.codacy.com/manual/alex-05/balena-minecraft-bungeecord?utm_source=github.com&amp;utm_medium=referral&amp;utm_content=AlexProgrammerDE/balena-minecraft-bungeecord&amp;utm_campaign=Badge_Grade)
**Starter project enabling you a Bungeecord Proxy using just a Raspberry Pi.**

This project has been tested on and Raspberry Pi 4 B 4GB.

## Hardware required

* Raspberry Pi 4B (The best is 4GB. 1GB is not enough.) :tada:
* Micro SD Card (we recommend 8GB Sandisk Extreme Pro) :floppy_disk:
* Power supply :electric_plug:

## Software required

* A download of this project (of course)
* Software to flash an SD card ([balenaEtcher](https://balena.io/etcher))
* A free [balenaCloud](https://balena.io/cloud) account
* The [balena CLI tools](https://github.com/balena-io/balena-cli/blob/master/INSTALL.md)

## Setup and use :stars:

To run this project is as simple as deploying it to a balenaCloud application, but it has to be configured if you want to use it in your system.

### Setup the Raspberry Pi :cd:

* Sign up for or login to the [balenaCloud dashboard](https://dashboard.balena-cloud.com)
* Create an application, selecting the correct device type for your Raspberry Pi
* Add a device to the application, enabling you to download the OS
* Flash the downloaded OS to your SD card with [balenaEtcher](https://balena.io/etcher)
* Power up the Pi and check it's online in the dashboard

### Deploy this application :airplane:

* Install the [balena CLI tools](https://github.com/balena-io/balena-cli/blob/master/INSTALL.md)
* Login with `balena login`
* Download this project and from the project directory run `balena push <appName>` where `<appName>` is the name you gave your balenaCloud application in the first step.
