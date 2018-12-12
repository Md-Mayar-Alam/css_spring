$(document).ready(function(){
	$(".ribbonItemNav").mouseenter(function(){
		showUnderLine(this);	
	});
	
	$(".ribbonItemNav").mouseleave(function(){
		removeUnderLine(this);
	});
	
	$(".ribbonItemAuth").mouseenter(function(){
		showUnderLine(this);
	});
	
	$(".ribbonItemAuth").mouseleave(function(){
		removeUnderLine(this);
	});
});

function showUnderLine(currentElement){
	$(currentElement).css("text-decoration", "underline");
}

function removeUnderLine(currentElement){
	$(currentElement).css("text-decoration", "none");
}