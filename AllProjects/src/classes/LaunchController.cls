public with sharing class LaunchController {

    public PageReference allowAccess(){
        PageReference pr=Page.ProtectedContent;
        
        try{
            pr.getContent();
        }
        catch(Exception e)
        {
            pr = null;
        }
        
        return pr;
    }
}