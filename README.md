# devops-pw7-Docker
DevOps Project work 7 - Docker


Python Test
```console
python3 web.py
```

Docker Test
```console
docker build ./
docker images
docker run 508702de550e
```

# PostgreSQL
```console
sudo sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt $(lsb_release -cs)-pgdg main" > /etc/apt/sources.list.d/pgdg.list'
wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -
sudo apt-get update
sudo apt-get -y install postgresql

sudo nano /etc/postgresql/14/main/pg_hba.conf
host    all             all             0.0.0.0/0                md5
host    all             all             ::/0                     md5
		  
sudo nano /etc/postgresql/14/main/main/postgresql.conf
listen_addresses='*'

systemctl status postgresql.service 
sudo systemctl restart postgresql 

sudo su - postgres
psql -c "alter user postgres with password 'masterkey'"

createuser dbuser
createdb testdb -O dbuser

$ psql testdb 
psql (12.1 (Ubuntu 12.1-1))
Type "help" for help.

testdb=# alter user dbuser with password 'dbpassword';
ALTER ROLE
testdb=# \q 

psql -l
```

# Docker
```console
sudo apt-get update
sudo apt-get install ca-certificates curl gnupg lsb-release
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io

sudo systemctl status docker
```