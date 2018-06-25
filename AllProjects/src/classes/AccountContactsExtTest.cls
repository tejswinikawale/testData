@isTest
private class AccountContactsExtTest {
    static testMethod void TestExtensionController(){
        Account acc = new Account(Name = 'Unit Test');
        List<Contact> contacts = new List<Contact>();
        contacts.add(new Contact(FirstName='Unit', LastName='Test', Email='Unit.Test@Unit.Test', AccountId=acc.id));
    	contacts.add(new Contact(FirstName='Unit', LastName='Test 2', Email='Unit.Test2@Unit.Test', AccountId=acc.id));
    	insert contacts;
        
        ApexPages.StandardController std = new ApexPages.StandardController(acc);
        AccountContactsExt controller = new AccountContactsExt(std);
        System.assertEquals(2, controller.contacts.size());
    }

}