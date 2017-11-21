#!/bin/sh

az login

az group create --name hectagon-functions --location "Australia Southeast"
az group deployment create --resource-group hectagon-functions --template-file azuredeploy.json --parameters @azuredeploy.parameters.prod.json
