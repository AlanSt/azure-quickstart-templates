# Advanced Linux Template : Deploy a Large Cluster

<a href="https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2FAlanSt%2Fazure-quickstart-templates%2Fmaster%2Flarge-cluster%2Fazuredeploy_nonat.json" target="_blank">
    <img src="http://azuredeploy.net/deploybutton.png"/>
</a>

Built by: [AlanSt](https://github.com/AlanSt)

This advanced template creates a large number of VMs behind a single IP.  

This template creates new storage accounts / VMs behind a load balancer, configured with the layout of storage accounts / VMs per storage account you indicate.

Below are the parameters that the template expects

| Name   | Description    |
|:--- |:---|
| storageAccountPrefix  | This is a unique prefix used for objects. |
| numberOfStorageAccounts  | The number of storage accounts to create. |
| numberOfInstancesPerAccount  | The number of VMs to create per storage account (<= 40 highly recommended). |
| adminUsername | The administrator user name. |
| adminPassword | The administrator password. |
| dnsNameforLBIP | This is the unique name for the load balancer. |

##Known Issues and Limitations
- Currently there are no inbound NAT rules set per VM.  They can be added after the script runs.  This will likely be added to a future version of this script.
- Based on the bandwidth limits for VHDs and storage accounts, it is highly recommended that you do not exceed 40 VMs per storage account.
