public class CustomContExtension {
    
    private final Account acct;
     public CustomContExtension(ApexPages.StandardSetController controller) {
        this.acct = (Account)controller.getRecord(); 
    }    
    
    public ApexPages.StandardSetController accountRecords {
        get {
            if(accountRecords == null) {
                accountRecords = new ApexPages.StandardSetController(
                    Database.getQueryLocator([SELECT Name FROM Account WHERE Id NOT IN 
                        (SELECT AccountId FROM Opportunity WHERE IsClosed = true)]));
            }
            return accountRecords;
        }
        private set;
    }
    public List<Account> getCustomContExtension() {
         return (List<Account>) accountRecords.getRecords();
    }  

}