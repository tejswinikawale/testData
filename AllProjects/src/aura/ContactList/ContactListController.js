({
    doInit : function(component, event) {
        var action = component.get("c.findAll");
        action.setCallback(this, function(a) {
            component.set("v.contacts", a.getReturnValue());
            
            console.log("Inside the contact list controller");
        });
        $A.enqueueAction(action);
    }
})