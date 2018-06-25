public with sharing class AppraisalCustomCont {
    public String AppraisalName{
        get{
            if(AppraisalName == null)
                AppraisalName = '';
                return AppraisalName;
           }
        
        set;
    }
    
    public List<SelectOption> AppraisalTypeList
    {
        get
        {
            List<SelectOption> options = new List<SelectOption>();
            Schema.DescribeFieldResult fieldResult = Appraisal__c.Appraisal_Summary_Type__c.getDescribe();
            List<Schema.PicklistEntry> ple = fieldResult.getPicklistValues();
            for( Schema.PicklistEntry f : ple)
           {
              options.add(new SelectOption(f.getLabel(), f.getValue()));
           }      
           return options;
            
        }
        set;
    }
    public String SelectedAppraisalType
    {get;set;}
    public String SelectedName
    {get;set;}
    public void Save()
    {}

}