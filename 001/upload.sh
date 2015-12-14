# accepts a storage account name and a key
[[ -z "$HOME" || ! -d "$HOME" ]] && { echo 'fixing $HOME'; HOME=/root; } 
export HOME 

export AZURE_STORAGE_ACCOUNT="$1" 
export AZURE_STORAGE_ACCESS_KEY="$2" 
azure storage container create vhds

blob_name=$(echo "$1" | cut -f5 -d/)
blobxfer $1 vhds "/mnt/$blob_name" --storageaccountkey $2 --upload --no-computefilemd5 --autovhd

