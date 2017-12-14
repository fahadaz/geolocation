#!/bin/bash
#this is a comment-the first line sets bash as the shell script

#create a scratch org
sfdx force:org:create -f config/project-scratch-def.json -a GeoTestOrg

#push local source and meta data
sfdx force:source:push -u GeoTestOrg

#assign permission sets
sfdx force:user:permset:assign -n Geolocation -u GeoTestOrg

#load sample data into the org
sfdx force:data:tree:import -f data/Account.json -u GeoTestOrg

#open the new org
sfdx force:org:open -u GeoTestOrg