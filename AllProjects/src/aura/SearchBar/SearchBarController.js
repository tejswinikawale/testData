({
    doSearch : function(component,event,helper){
         var contacts = component.get("v.searchTerm");
        var compEvent = component.getEvent("cmpEvent");
      
        console.log(contacts);
     
      
       compEvent.setParams({ "contacts" : contacts });

        compEvent.fire();

    }
    
})