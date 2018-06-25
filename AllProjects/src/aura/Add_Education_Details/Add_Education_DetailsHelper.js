({
	helperRectifySequence : function(component,event) {
         var indexNo = component.get("v.indexNo");
         var New = parseInt(indexNo)+1;
        var NewindexNo = component.set("v.sequenceNo",New);
		
	}
})