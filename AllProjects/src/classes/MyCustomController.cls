public class MyCustomController {
private final Account account;
    public MyCustomController(){
        account = [select id,name,site from Account where id =: ApexPages.currentPage().getParameters().get('id')];
    }
    
    public Account getAccount(){
        return account;
    }
    
    public PageReference save(){
        update account;
        return null;
    }
}