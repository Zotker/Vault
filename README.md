# Vault
Cheap file-server

1. docker build -t NAME/CONTNAME:TAG .
2. docker run -d -p 80:80 --name="vault" -v /YOUR_FOLDER_NAME_TO_MOUNT:/var/www/files/ NAME/CONTNAME:TAG (from step 1)
