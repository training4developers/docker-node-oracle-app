# Node.js & MongoDB Starter Application using Docker

The following Node.js & MongoDB Starter Application executes within a Docker environment.

## Install Docker

Download [Docker](https://www.docker.com/products/docker-toolbox). Visit the Docker link, download the Docker installation program appropriate for your system (Mac or Windows), then run the installer.

#### Macs Only

As part of installing Docker, Virtual Box will be installed.  If you have VMWare Fusion installed, VMWare Fusion can be used instead.

If you wish to use VMWare Fusion for hosting Dockers, run the following commands after completing the installation of Docker. When installing Docker, do not install Virtual Box.

```bash
$ docker-machine create --driver vmwarefusion vmwf

$ eval $(docker-machine env vmwf)

$ docker-machine ip vmwf
```

The IP address will be the IP address used to access the web server when the Docker is started.

### Pull Down this Project

Either clone this project to your system, or download a ZIP file of this project. If you download the ZIP file, then unzip the ZIP file.

## Start Project

Open the **Docker Quick Start** terminal, then change to the project folder on your system. Run the following command.

```bash
$ ./start.sh
```

When the Docker container instance starts up, a Docker container instance terminal will be presented.  From the Docker container instance terminal, run the following commands.

```bash
$ cd /opt/app

$ node index
```

These commands will start a web server which will be exposed through the external port of 3000 for the Docker instance.

## Browse to Web Application

If using the default Virtual Box virtual machine created when Docker was installed, the IP can be retrieved using the following command.

```bash
$ docker-machine ip default
```

If you are using the VMWare Fusion machine discussed above in the Docker Installation section, the IP address can be determined with the following command.

```bash
$ docker-machine ip vmwf
```

Open a web browser, and navigate to http://docker-machine-ip-address:3000.

## Open an Editor

Start an editor such as Atom, Sublime or Visual Studio Code, and open the folder to edit the Node.js application. When the files in the **www** folder are changed, the website can simply be refreshed in the web browser and the changes should appear. If changes are made outside the **www** folder, then the Node.js application will need to be restarted in the Docker container instance.

## Connect to Oracle

Download [Oracle SQL Developer](http://www.oracle.com/technetwork/developer-tools/sql-developer/downloads/index.html). Connect to the database using the following information:

- Hostname: Docker Machine IP address from above
- Port: 49161
- SID: xe
- Username: system
- Password: oracle
