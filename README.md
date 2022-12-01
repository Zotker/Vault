# Vault
Image based on Alpine to quick set up file server via NGINX.

HOW TO SETUP:
``` 
docker pull zotker/vault:1.0.1 
```
```
docker run -d -p 80:80 --name="vault" -v YOUR_FOLDER_TO_SHARE:/var/www/files/ zotker/vault:1.0.1
```
	
By default nginx bind 80 port for work. You can change this in "-p 80:80" where "-p YOUR_PORT:80".
