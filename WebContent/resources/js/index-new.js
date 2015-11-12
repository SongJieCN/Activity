/**
 * 
 */
$(function() {
	   $("#btnpublish").click(function(){
	        $.ajax({
	            type: "POST",
	            url: "index-create.do",
	            contentType: "application/json", //必须有
	            dataType: "json", //表示返回值类型，不必须
	            data: JSON.stringify({ 'foo': 'foovalue', 'bar': 'barvalue' }),  //相当于 //data: "{'str1':'foovalue', 'str2':'barvalue'}",
	            success: function (jsonResult) {
	                alert(jsonResult);
	            }
	        });
	    });
});