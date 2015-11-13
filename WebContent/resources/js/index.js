/**
 * 
 */

$(function(){
	initRedirect();
	
});


function initRedirect(){
	$("#btncreate").click(function(){
		window.location = "index-new.do";
	});
	
	$("#btnappoint").click(function(){
		window.location = "myappoint.do";
	});
	
	$("#btnabout").click(function(){
		window.location = "about.do";
	});
};