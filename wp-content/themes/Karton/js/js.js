var observer = new MutationObserver(function(mutations) {
	mutations.forEach(function(mutation) {
		//console.log('Mutation type: ' + mutation.type);
		if ( mutation.type == 'childList' ) {
			if (mutation.addedNodes.length >= 1) {
				if (mutation.addedNodes[0].nodeName != '#text') {
					//console.log('Added ' + mutation.addedNodes[0] + ' tag.');
					//console.log(mutation.addedNodes[0]);
					if(mutation.addedNodes[0].className){
						//console.log(mutation.addedNodes[0].innerHTML);

						if(mutation.addedNodes[0].className.includes("booked-modal")){
							setTimeout(function(){ 
								console.log(mutation.addedNodes[0]);
								var els = document.getElementById("submit-request-appointment");
								console.log(els);
								$("#submit-request-appointment").trigger( "click" );
							}, 1000);
						}
					}
				}
			}
			else if (mutation.removedNodes.length >= 1) {
				console.log('Removed ' + mutation.removedNodes[0].tagName + ' tag.')
			}
		}
		else if (mutation.type == 'attributes') {
			//console.log('Modified ' + mutation.attributeName + ' attribute.')
		}
				});	 
});
	
var observerConfig = {
				attributes: true,
				childList: true,
				characterData: true,
				subTree: true
};
	
// Listen to all changes to body and child nodes
var targetNode = document.body;
observer.observe(targetNode, observerConfig);
 


function triggerEvent(el, type){
	console.log(el);
   if ('createEvent' in document) {
        // modern browsers, IE9+
        console.log("aaaa");
        var e = document.createEvent('HTMLEvents');
        e.initEvent(type, false, true);
        el.dispatchEvent(e);
    } else {
        // IE 8
        var e = document.createEventObject();
        e.eventType = type;
        el.fireEvent('on'+e.eventType, e);
    }
}

$(".umawianie").click(function(){
	$(".szara-strefa").addClass("clicked");
	console.log("aaa");
		scrollTop: $(".szara-strefa").offset().top;
	//setTimeout(function(){ 
		$([document.documentElement, document.body]).animate({
			scrollTop: $(".pokaz").offset().top+70+"px"
		}, 600);
	//}, 00)
});