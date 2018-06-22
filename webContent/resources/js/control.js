function changeLoadingStyle(){
	$(".loader").css("display", "block");
	$(".startBtn").css("display", "none");
}

window.onload = function() {
	startCrawling();
}