public class ActionFunctionController {
    
    public List<Case> getCases()
    {
        return [select id,CaseNumber,Status,Account.Name from Case order by CreatedDate limit 10];
    }
    
    public PageReference goCasesTab()
    {
        PageReference result = new PageReference('/500/o');
        return result;
    }

}