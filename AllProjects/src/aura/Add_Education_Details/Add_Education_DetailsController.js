({
    
    
    doinit: function(component,event,helper){
        
      console.log("This text is from init method defined in Child component");  
       // component.set("v.InstituteName","ABCD");
       // component.set("v.CourseName","MS");
       // component.set("v.DurationFCourse","2");
       helper.helperRectifySequence(component,event);
       
        
        
    },
	deleteDetails : function(component, event, helper) {
        
        var NewEducationdetailsList = component.get("v.EducationDetailsListInnerComponent");
        var currentIndex = component.get("v.indexNo");
        if(currentIndex > -1)
        NewEducationdetailsList.splice(currentIndex,1);
        component.set("v.EducationDetailsListInnerComponent", NewEducationdetailsList);
		
	},
    
    changeInIndexNo : function(component,event,helper){
        
        console.log("There is a change noticed in indexNo attribute");
        helper.helperRectifySequence(component,event);
    },
    
    saveEduDetails : function(component,event,helper){
       
        // call apex class function with name
        // SaveEducationalDetails
         var RegistrationRecordId = component.get("v.RegistrationRecordId");
        component.set("v.EduDetails.Registration_Form__c",RegistrationRecordId);
        var EduDetails = component.get("v.EduDetails");
        var actn = component.get("c.SaveEducationalDetails");
         actn.setParams({ EduDet : EduDetails });
                actn.setCallback(this,function(resp){
            var state = resp.getState();
            if(state == "SUCCESS"){
                console.log( 'Add Educational Detail is saved');
                
            }
            else if(state === "ERROR"){
                var errors = resp.getError();
                if (errors) {
                    if (errors[0] && errors[0].message) {
                        console.log("Error message: " + 
                                 errors[0].message);
                    }
                } else {
                    console.log("Unknown error");
                }
       
                
            }
            
        });
		
       $A.enqueueAction(actn); 
        
       
    }
})