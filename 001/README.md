# Custom Images at Scale (working, improvments in progress)

<a href="https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2FAlanSt%2Fazure-quickstart-templates%2F401gen%2F001%2Fazuredeploy.json" target="_blank">
    <img src="http://azuredeploy.net/deploybutton.png"/>
</a>

This deploys custom images at scale.  It is designed so that it can be called from other templates, so you can build on top of it.

You will need to deploy it to a region where you have access to create an Azure Automation account.  I've been using East US 2.

Until the improvements label is removed, you may wish to continue referencing it when needed.  It will also likely move to a final home, so this link may break at some point.

Planned improvements include:
- delete the transfer VM (and associate bits)
- delete the automation account (if possible)
- pass storage keys securely through the system
- add support for individual vms
- add support for individual vms inside an availability set (needed for some RDMA setups)
