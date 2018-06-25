public class CustomListController {
    
    public ApexPages.StandardSetController setCon{
        get{
            if(setCon == null)
            {
                setCon = new ApexPages.StandardSetController(Database.getQueryLocator([select name ,closedate from opportunity]));
            }
            
            return setCon;
        }
        
        set;
    }
    
    public List<Opportunity> getOpportunities(){
        return (List<Opportunity>) setCon.getRecords();
    }

}