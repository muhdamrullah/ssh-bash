# ssh-bash

Step (1): Retrieve the "raspi.pem" file from the Protected Folders

Step (2): 

```bash
$ sudo nano /etc/ssh/ssh_config 
```
```
          Add in the following:
              ServerAliveInterval 30
              ServerAliveCountMax 4
```
Step (3): 
```
$ sudo nano /etc/ssh/sshd_config
```
```
          Add in the following:
              ClientAliveInterval 30
              ClientAliveCountMax 4
```
Step (4): 
```
$ sudo crontab -e
```
```
          Add in the following:
              */1 * * * * /root/Downloads/ssh-bash/server > tunnel.log 2>&1
```
Step (5):
```
$ chmod 400 raspi.pem
```
