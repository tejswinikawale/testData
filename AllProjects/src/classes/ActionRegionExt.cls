public with sharing class ActionRegionExt {
    
    private ApexPages.StandardController stdc {get;set;}
    public String baseSubject{get;set;}
    
    public ActionRegionExt(ApexPages.StandardController std){
        
        stdc = std; 
    }
    
    public PageReference setUpSubject()
    {
        String subject='';
        Case cs = (Case)stdc.getRecord();
        
        if(!String.isBlank(cs.AccountId))
        {
            Account acc = [select Name from account where id =: cs.AccountId];
            subject+=acc.Name + ' - ';
        }
        if (null!=baseSubject)
    	{
    		subject+=baseSubject;
    	}
    	
		cs.Subject=subject;
		
		return null;
    
    }

}