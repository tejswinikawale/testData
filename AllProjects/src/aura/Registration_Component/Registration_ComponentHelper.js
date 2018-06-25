({
	onClickCheckBoxhelper : function(component) {
		console.log("This text is from helper function");
        
        var checkBoxValue = component.find("checkBox").get("v.checked");
        component.set("v.CheckBoxValue",checkBoxValue);
        
        component.set("v.RegForm.Available_on_weekends__c",checkBoxValue);
        
        
	}
})