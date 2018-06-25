public class PullLookupFieldsExt {
    
    private ApexPages.StandardController stdc{get;set;}
    
    public PullLookupFieldsExt(ApexPages.StandardController std){
        stdc = std; 
    }
    
    public void Accountselected()
    {
        Case cs = (Case) stdc.getRecord();
        if(!String.isBlank(cs.AccountId))
        {
            cs.Account =[select Website,Phone from Account where id=:cs.AccountId];
            
        }else
        {
       		cs.Account = null;
        }
        
    }

}