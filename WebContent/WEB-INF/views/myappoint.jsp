<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<script type="text/javascript"
	src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" integrity="sha512-dTfge/zgoMYpP7QbHy4gWMEGsbsdZeCXz7irItjcC3sPUFtf0kuFbDz/ixG7ArTxmDjLXDmezHubeNikyKGVyQ==" crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css" integrity="sha384-aUGj/X2zp5rLCbBxumKTCw2Z50WgIr1vs/PFN4praOTvYXWlVyh2UtNUU0KAUhAX" crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js" integrity="sha512-K1qjQ+NcF2TYO/eI3M6v8EiNYZfA95pQumfvcVrTHtwQVDG+aHRqLi/ETn2uB+1JqwYqVG3LIvdm9lj6imS/pQ==" crossorigin="anonymous"></script>

<title>我的参与</title>
</head>
<body style="background-color:#F5F5F5;">
<c:forEach var="act" items="${result }">
<div class="container-fluid" style="background-color:white; margin-top:5px; border:1px solid skyblue;">
	<div class="row-fluid">
		<div class="span12">
			<div class="media">
				<a class="pull-left" href="#"><img class="media-object img-polaroid" src="http://www.bootcss.com/p/layoutit/img/a_002.jpg" alt='' /></a>
				<div class="media-body">
					<h4 class="media-heading">
						<c:out value="${act.topic }"></c:out>
					</h4> <c:out value="${act.content }"></c:out>
					<hr>
					查看详情
				</div>
			</div>
		</div>
	</div>
</div>
</c:forEach>
</body>
</html>