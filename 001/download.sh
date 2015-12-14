# accepts a blob uri (MUST HAVE https:// at the beginning) and a key

[[ -z "$HOME" || ! -d "$HOME" ]] && { echo 'fixing $HOME'; HOME=/root; } 
export HOME 

apt-get -y update
apt-get -y install python3-pip
pip3 install blobxfer
apt-get install -y npm 
ln -s /usr/bin/nodejs /usr/bin/node
npm install -g azure-cli 
azure config mode arm 

sa_domain=$(echo "$1" | cut -f3 -d/)
sa_name=$(echo $sa_domain | cut -f1 -d.)
container_name=$(echo "$1" | cut -f4 -d/)
blob_name=$(echo "$1" | cut -f5 -d/)

blobxfer $sa_name $container_name /mnt/ --remoteresource $blob_name --storageaccountkey $2 --download --no-computefilemd5



