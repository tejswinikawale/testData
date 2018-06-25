({
	// Your renderer method overrides go here
    render : function(component,helper){
        var a =  this.superRender();
        console.log("This text is from render function which gets executed when component is initiated");
        return a;
    },
    
    afterRender : function(component,helper){
        var a =  this.superAfterRender();
        console.log("This text should come after render() is over");
        console.log("This text is from afterrender function");
        return a;
    },
    
    rerender : function(component,helper){
        var a =  this.superRerender();
        console.log("This text is from rerender function which gets executed wheneve data change occurs");
        return a;
    },
    
    unrender : function(component, helper){
        this.superUnrender();
        console.log("This text appears when registration component is destroyed");
    }
})