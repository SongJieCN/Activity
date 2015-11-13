/**
 * 
 */

$.fn.serializeObject = function() {
    var o = {};
    var a = this.serializeArray();
    $.each(a, function() {
        if (o[this.name]) {
            if (!o[this.name].push) {
                o[this.name] = [ o[this.name] ];
            }
            o[this.name].push(this.value || '');
        } else {
            o[this.name] = this.value || '';
        }
    });
    return o;
}

$(function() {
	   $("#btnpublish").click(function(){
		   alert($("#subform").serializeObject());
	        $.ajax({
	            type: "POST",
	            url: "index-create.do",
	            contentType: "application/json", //必须有
	            dataType: "json", //表示返回值类型，不必须
	            data: JSON.stringify($("#subform").serializeObject()), 
	            success: function (jsonResult) {
	                window.location = "mycreate.do";
	            },
	            error : function(msg){
	            	alert(msg.responseText);
	            }
	        });
	    });
});