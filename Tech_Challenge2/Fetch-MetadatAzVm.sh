#!/bin/sh

# Author : Ajayghosh V S

# prerequisite

# sudo apt-get install sshpass - (Best practice is to use ssh keys rather than using the Passwords. Ideally ssh paas is not recomended)
# sudo apt install jq
# curl -sL https://aka.ms/InstallAzureCLIDeb | sudo bash


# Variables Section

Host_IP=10.2.0.4
UserName=Admin-Win


Password=""

# Example of passing key for Network Interface

MetadataKey=network/interface/0

Get_Password_KV()

{
    az login --identity
    Password= az keyvault secret show --name AG-IND-SI-VM-01-Password --vault-name AG-IND-SI-KV-01 --query "value" -o tsv >> secret
    Password="$(cat secret)"
    rm secret

}

# Method will query MetaData from VM
Get_MetaData()
{

    sshpass -p $Password ssh $UserName@$Host_IP "curl -s -H Metadata:true --noproxy "*" "http://169.254.169.254/metadata/instance/$1?api-version=2021-02-01" | jq"
}


# Calling the fuction with Passing the Key as argument
Get_MetaData $MetadataKey

