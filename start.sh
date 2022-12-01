docker pull zotker/vault:1.0.1 && \
docker run -d \
	-p 80:80 \ 
	--name="vault" \
	-v /sharefile:/var/www/files/ \
	zotker/vault:1.0.1
