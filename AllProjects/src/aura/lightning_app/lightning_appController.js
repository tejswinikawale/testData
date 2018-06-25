({
	openORcloseRegistrationForm : function(component, event, helper) {
        
       var a = event.getSource().get("v.label");
        if (a == "Open Registration Form")
        {
            component.set("v.OpenRegistrationForm",true);
            component.set("v.ButtonLabel","Close Form");
        }
       if(a == "Close Form")
       {
            component.set("v.OpenRegistrationForm",false);
            component.set("v.ButtonLabel","Open Registration Form");
       }
		
	}
})