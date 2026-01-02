#!/bin/bash

RESOURCE_GROUP="aks-rg"
LOCATION="eastus"
AKS_NAME="demo-aks-cluster"

az group create \
  --name $RESOURCE_GROUP \
  --location $LOCATION

az aks create \
  --resource-group $RESOURCE_GROUP \
  --name $AKS_NAME \
  --node-count 2 \
  --node-vm-size Standard_DS2_v2 \
  --enable-managed-identity \
  --generate-ssh-keys
