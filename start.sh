docker pull zotker/vault:ubuntu && \
docker rm -f vault && \
docker run -d -p 80:80 --name="vault" -v /sharefile:/var/www/files/ zotker/vault:ubuntu
