public with sharing class SearchFromURLController {
    public String name1{get;set;}
    public List<Account> accounts{get;set;}
    
   public Boolean searched {get;set;}
    
    public SearchFromURLController(){
        searched= false;
        String nameStr = ApexPages.currentPage().getParameters().get('name1');
        system.debug('nameStr is:'+nameStr);
        if (nameStr != null)
        {
            name1 = nameStr;
            executeSearch();
        }
    }
    
    public PageReference executeSearch(){
        
        searched=true;
		String searchStr='%' + name1 + '%';
		accounts=[select id, Name, Industry, Type from Account where name LIKE :searchStr];
		
		return null;
        
    }

}