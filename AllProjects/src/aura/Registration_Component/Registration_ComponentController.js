({
	doSubmit : function(cmp, evt, hlpr) {
		//  call apex function SaveRegistrationDetail to save data in reg form 
		//  also we have to pass RegForm as a parameter
		var RegForm = cmp.get("v.RegForm");
        
         // create a one-time use instance of the SaveRegistrationDetail action
        // in the server-side controller
        var action = cmp.get("c.SaveRegistrationDetail");
        action.setParams({ regForm  : RegForm });

        // Create a callback that is executed after 
        // the server-side action returns
        action.setCallback(this, function(response) {
            var state = response.getState();
             if (state === "SUCCESS") {
                // Alert the user with the value returned 
                // from the server
                 alert("From Server:"+response.getReturnValue())
                 cmp.set("v.isDataSubmitted", 'True');
               var parentId = response.getReturnValue();
                 cmp.set("v.RegistrationRecordId",parentId);
                
                 	}
           
            else if (state === "ERROR") {
                var errors = response.getError();
                if (errors) {
                    if (errors[0] && errors[0].message) {
                        console.log("Error message: " + 
                                 errors[0].message);
                    }
                } else {
                    console.log("Unknown error");
                }
       
        // $A.enqueueAction adds the server-side action to the queue.
       
            }
        });

        $A.enqueueAction(action);  
        
        
       
	},
    
    onClickCheckBox: function(component,event,hlpr){
        
        // Body of the function;
        // Call function defined in helper;
        // hlpr.<functionNameinHELPER>
        console.log("This text is from Controller Resourse");
        hlpr.onClickCheckBoxhelper(component);
        
    },
    addDetails: function(component,event,helper){
        
        console.log("Add Educational Details");
        var CurrentEducationdetailsList = component.get("v.EducationDetailsList");
        var currentSize = parseInt((CurrentEducationdetailsList.length));
        console.log(currentSize);
        var NewSize = parseInt((currentSize) + 1);
        console.log(NewSize);
        CurrentEducationdetailsList.push(NewSize);
        component.set("v.EducationDetailsList", CurrentEducationdetailsList);
        console.log("added");
    }
})