<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<meta name="description" content="">
<meta name="author" content="">
<link
	href="http://netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css"
	rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" media="screen"
	href="http://tarruda.github.com/bootstrap-datetimepicker/assets/css/bootstrap-datetimepicker.min.css">

<link href="<c:url value="/resources/css/main.css" />" rel="stylesheet"
	type="text/css" />

<script type="text/javascript"
	src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>
	
	<script type="text/javascript"
	src='<c:url value="/resources/js/index-new.js"></c:url>'></script>
	
<script type="text/javascript"
	src="http://netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>

<script type="text/javascript"
	src="http://tarruda.github.com/bootstrap-datetimepicker/assets/js/bootstrap-datetimepicker.min.js">
	
</script>
<script type="text/javascript"
	src="http://tarruda.github.com/bootstrap-datetimepicker/assets/js/bootstrap-datetimepicker.pt-BR.js">
	
</script>

<title>创建活动</title>
</head>
<body style="background-color: #F5F5F5;">
	<form name="subform" id="subform">
		<div class="input-group" style="margin-top: 5px;">
			<span class="input-group-addon">主题: </span> <input type="text"
				class="form-control" aria-label="Amount (to the nearest dollar)" name="topic" id="topic"><span
				class="glyphicon glyphicon-plus" aria-hidden="true" name="spanTopic" id="spanTopic"></span>
		</div>
		<div class="input-group" style="margin-top: 5px;">
			<span class="input-group-addon">内容: </span>
			<textarea class="form-control" rows="6" name="content" id="content"></textarea>
		</div>

		<div class="input-group" style="margin-top: 5px;">
			<span class="input-group-addon">活动地点: </span> <input type="text"
				class="form-control" aria-label="" name="place" id="place"><span
				class="glyphicon glyphicon-map-marker" aria-hidden="true"></span>
		</div>

		<div class="input-group" style="margin-top: 5px;">
			<span class="input-group-addon">开始时间: </span> <input type="datetime"
				class="form-control" aria-label="Amount (to the nearest dollar)" name=""starttime" id="starttime">
		</div>

		<div class="input-group" style="margin-top: 5px;">
			<span class="input-group-addon">结束时间: </span> <input type="datetime"
				class="form-control" aria-label="Amount (to the nearest dollar)" name="endtime" id="endtime">
		</div>
		<div class="input-group" style="margin-top: 5px;">
			<span class="input-group-addon">费用: </span> <input type="text"
				class="form-control" aria-label="Amount (to the nearest dollar)" name="price" id="price">
		</div>
		<div class="input-group" style="margin-top: 5px;">
			<span class="input-group-addon">备注: </span>
			<textarea class="form-control" rows="3" name="comment" id="comment"></textarea>
		</div>

		<div class="container">
			<div class="row">
				<div class='col-sm-6'>
					<div class="form-group">
						<div class='input-group date' id='datetimepicker1'>
							<input type='text' class="form-control" /> <span
								class="input-group-addon"> <span
								class="glyphicon glyphicon-calendar"></span>
							</span>
						</div>
					</div>
				</div>
				<script type="text/javascript">
					$(function() {
						$('#datetimepicker1').datetimepicker();
					});
				</script>
			</div>
		</div>

		<div class="container">
			<div class="row">
				<div class='col-sm-6'>
					<div class="form-group">
						<div class='input-group date' id='datetimepicker2'>
							<input type='text' class="form-control" /> <span
								class="input-group-addon"> <span
								class="glyphicon glyphicon-calendar"></span>
							</span>
						</div>
					</div>
				</div>
			</div>
		</div>

	</form>

	<div class="navbar navbar-default navbar-fixed-bottom">
		<nav>
			<ul class="pager">
				<li><a name="btnpublish" id="btnpublish">发 布</a></li>
				<li><a href="#">预 览</a></li>
			</ul>
		</nav>
	</div>
</body>
</html>