({
	handleComponentEvent: function(component,event){
       var contacts = event.getParam("contacts");
        console.log("contacts value in quickcontact is:" +contacts);
        var action = component.get("c.findByName");
        action.setParams({
      "searchKey" : contacts
    });
        
       action.setCallback(this, function(a) {
       component.set("v.parentAttribute", a.getReturnValue());
           console.log("Inside quickcontact controller"); 
    });
    $A.enqueueAction(action);
    }
        
	
})