# accepts a storage account name and a key
export AZURE_STORAGE_ACCOUNT="$1" 
echo $1
export AZURE_STORAGE_ACCESS_KEY="$2" 
echo $2
azure storage container create vhds
echo "vhds created"

blob_name=$(echo "$1" | cut -f5 -d/)
blobxfer $1 vhds "/mnt/$blob_name" --storageaccountkey $2 --upload --no-computefilemd5 --autovhd

