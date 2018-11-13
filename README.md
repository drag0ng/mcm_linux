# mcm_linux
This script installs the required dependencies for mochimo wallet and daemon on Ubuntu 16.04 LTS.

## How to run
Get the setup.sh file or copy the contents into setup.sh on your machine.

```
chmod +x setup.sh
./setup.sh
```

After the installation, you need to reboot the machine for the mochimo daemon to work.

## Wallet setup and daemon
To setup wallet and run the daemon, follow the notes from the discord channel or follow sub-sections 7,8 in
https://docs.google.com/document/d/1nxWO-O5fZ_xdJwqpZAkWtw1Zby6ENdQsoRQn8wY2EoU

## IMPORTANT NOTES
* This script removes any existing nvidia drivers. If you don't want that, remove the line that contains ```purge```.
* This script installs the latest nvidia and cuda drivers. (nvidia-410 and cuda-10.0.130)
