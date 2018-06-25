public class ActionFunctionSearchController {
    public List <Account> results{get;set;}
    public String searchStr{get;set;}
    
	public ActionFunctionSearchController()
    {
        results = new List<Account>();
    }
    
    public PageReference doSearch()
    {
        String strch = '%'+searchStr+'%';
        results = [select name,type,Industry from account where Name like :strch];
        return null;
    }
    public PageReference clearResults()
	{
		results.clear();
		
		return null;
	}
    
    public Boolean getResultsAvailable()
	{
		return (results.size()>0);
	}
}