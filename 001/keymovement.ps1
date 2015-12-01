param(
                [Parameter(Mandatory=$True)]
                [string]$TransferSA,
                [Parameter(Mandatory=$True)]
                [string]$TransferKey,
                [Parameter(Mandatory=$True)]
                [string]$DataSA,
                [Parameter(Mandatory=$True)]
                [string]$DataKey
)
 
$DataKey > ".\$DataSA.sa"
 
$context = New-AzureStorageContext -StorageAccountName $TransferSA -StorageAccountKey $TransferKey
New-AzureStorageContainer -Name "sa" -Context $context
Set-AzureStorageBlobContent -Container "sa" -File ".\$DataSA.sa" -Blob "$DataSA.sa" -Context $context -Force

