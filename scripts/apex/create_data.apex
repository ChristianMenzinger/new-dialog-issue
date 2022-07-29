Id recType1Id = [SELECT Id FROM RecordType WHERE DeveloperName = 'RecType1' LIMIT 1].Id;
Id recType2Id = [SELECT Id FROM RecordType WHERE DeveloperName = 'RecType2' LIMIT 2].Id;
Master__c master1 = new Master__c(Name='Master 1', RecTypeValue__c='RecType1', RecordTypeId=recType1Id); 
Master__c master2 = new Master__c(Name='Master 2', RecTypeValue__c='RecType2', RecordTypeId=recType2Id);
insert new List<Master__c> {master1, master2};

Detail__c detail1 = new Detail__c(Name='Detail 1', RecType1Only__c='only rendered for RecType1', Master__c=master1.Id);
Detail__c detail2 = new Detail__c(Name='Detail 2', RecType2Only__c='only rendered for RecType2', Master__c=master2.Id);
insert new List<Detail__c> {detail1, detail2};
