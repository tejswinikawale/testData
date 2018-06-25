public class LookupController {
    public String query{get;set;}
    public List<Account> accounts{get;set;}
    
     public Boolean doneLookup {get; set;}
    
    public LookupController(){
        
        doneLookup = false;
    }
    
    public PageReference runQuery(){
        List<List<Account>> searchResults = 
        [FIND :query IN ALL FIELDS RETURNING 
                Account (id, name, billingstreet, billingcity, billingpostalcode)];
        accounts=searchResults[0];
        doneLookup=true;
        return null;
            
    }

}