public with sharing class CasesSidebarController {
    public Map<String, Integer> caseCountByStatus {get; set;}
    
    public CasesSidebarController(){
        List<String> closedLabels=new List<String>();
        for (CaseStatus cand : [select MasterLabel from CaseStatus where IsClosed=true])
		{
			closedLabels.add(cand.MasterLabel);
		}
        caseCountByStatus=new Map<String, Integer>();
		for (AggregateResult ar : [select status, count(id) caseCount from Case where status NOT IN :closedLabels GROUP BY status])
		{
			caseCountByStatus.put((String) ar.get('status'), (Integer) ar.get('caseCount'));
		}
    }

}