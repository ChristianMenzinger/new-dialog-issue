Be sure your DevHub is authenticated.
Paste below commands to your terminal:


sfdx force:org:create -f config/project-scratch-def.json --setalias new-dialog-test --durationdays 7 --setdefaultusername &&
sfdx force:source:push &&
sfdx force:user:permset:assign --permsetname Dev &&
sfdx force:apex:execute -f scripts/apex/create_data.apex &&
sfdx force:org:open -p "lightning/o/Master__c/list?filterName=All"

