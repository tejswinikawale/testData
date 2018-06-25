({
	doInit : function(component, event, helper) {
		helper.getAccountList(component);	
	},
    myButtonHandler: function(component, event, helper) {
            //Get data via "data-data" attribute
            alert(event.target.getAttribute("data-data") + " was passed");
        }
})