<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="en">
<head>
<meta charset="utf-8">
<title>Activity</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<meta name="description" content="">
<meta name="author" content="">

<script type="text/javascript"
	src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>

<script type="text/javascript"
	src='<c:url value="/resources/js/index.js"></c:url>'></script>


<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css"
	integrity="sha512-dTfge/zgoMYpP7QbHy4gWMEGsbsdZeCXz7irItjcC3sPUFtf0kuFbDz/ixG7ArTxmDjLXDmezHubeNikyKGVyQ=="
	crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css"
	integrity="sha384-aUGj/X2zp5rLCbBxumKTCw2Z50WgIr1vs/PFN4praOTvYXWlVyh2UtNUU0KAUhAX"
	crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"
	integrity="sha512-K1qjQ+NcF2TYO/eI3M6v8EiNYZfA95pQumfvcVrTHtwQVDG+aHRqLi/ETn2uB+1JqwYqVG3LIvdm9lj6imS/pQ=="
	crossorigin="anonymous"></script>


<script type="text/javascript"
	src='<c:url value="/resources/bootstrap/js/bootstrap-datetimepicker.js"></c:url>'></script>

<link rel="stylesheet"
	href='<c:url value="/resources/bootstrap/css/bootstrap-datetimepicker.css"></c:url>'>
<body>
	<div class="container-fluid">
		<div class="row-fluid">
			<div class="span12">
				<div class="page-header active">
					<h3>
						近期活动
						<button type="button" class="btn btn-link pull-right"
							align="right" aria-label="" name="btncreate" id="btncreate">
							<span class="glyphicon glyphicon-plus" aria-hidden="true">创建</span>
						</button>
					</h3>
				</div>
				
				<img alt="140x140" src="http://www.bootcss.com/p/layoutit/img/a.jpg"
					class="img-rounded" />
			</div>
		</div>
		<div class="row-fluid">
			<div class="span12">
				<div class="page-header">
					<h3>周边热门</h3>
				</div>
				<div class="carousel slide" id="carousel-288772">
					<ol class="carousel-indicators">
						<li class="active" data-slide-to="0"
							data-target="#carousel-288772"></li>
						<li data-slide-to="1" data-target="#carousel-288772"></li>
						<li data-slide-to="2" data-target="#carousel-288772"></li>
					</ol>
					<div class="carousel-inner">
						<div class="item active">
							<img alt="" src="http://www.bootcss.com/p/layoutit/img/1.jpg" />
							<div class="carousel-caption">
								<h4>棒球</h4>
								<p>棒球运动是一种以棒打球为主要特点，集体性、对抗性很强的球类运动项目，在美国、日本尤为盛行。</p>
							</div>
						</div>
						<div class="item">
							<img alt="" src="http://www.bootcss.com/p/layoutit/img/2.jpg" />
							<div class="carousel-caption">
								<h4>冲浪</h4>
								<p>
									冲浪是以海浪为动力，利用自身的高超技巧和平衡能力，搏击海浪的一项运动。运动员站立在冲浪板上，或利用腹板、跪板、充气的橡皮垫、划艇、皮艇等驾驭海浪的一项水上运动。
								</p>
							</div>
						</div>
						<div class="item">
							<img alt="" src="http://www.bootcss.com/p/layoutit/img/3.jpg" />
							<div class="carousel-caption">
								<h4>自行车</h4>
								<p>
									以自行车为工具比赛骑行速度的体育运动。1896年第一届奥林匹克运动会上被列为正式比赛项目。环法赛为最著名的世界自行车锦标赛。
								</p>
							</div>
						</div>
					</div>
					<a data-slide="prev" href="#carousel-288772"
						class="left carousel-control">‹</a> <a data-slide="next"
						href="#carousel-288772" class="right carousel-control">›</a>
				</div>
				<div class="row-fluid">
					<div class="span6"></div>
					<div class="span6"></div>
				</div>
			</div>
		</div>
	</div>
	<c:import url="/WEB-INF/views/tags/footer.jsp" />
</body>
</html>