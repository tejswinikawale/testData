public with sharing class InputFieldErrorExt {
    private ApexPages.StandardController stdc;
    
    public InputFieldErrorExt(ApexPages.StandardController std){
        
        stdc = std;
        
    }
    
    public PageReference save(){
        PageReference result=null;
        
        Contact cont = (Contact)stdc.getRecord();
        if ((String.IsBlank(cont.Email)) && (String.IsBlank(cont.Phone)))
        {
            cont.Email.addError('Please enter an email address or phone number');
            cont.phone.addError('Please enter an email address or phone number');
                
        }
        else
		{
			result=stdc.save();
		} 
        
        return result;
        
    }

}