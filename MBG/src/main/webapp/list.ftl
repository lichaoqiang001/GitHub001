<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="bootstrap-3.3.7/js/jquery.js"></script>
<script type="text/javascript" src="bootstrap-3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="bootstrap-3.3.7/css/bootstrap.min.css">
<script type="text/javascript">
	function searchGoods(){
		window.location.href="getShop?name="+$("#keyWords").val();
	}
</script>
</head>
<body>
<!-- <div class="container">
		<div class="row" style="height: 60px; margin-bottom: 40px;">
			<div class="row" style=" height: 100px;">
			<div class="col-md-2 col-md-offset-1" style="margin-top: 10px;">
				<img src="img/QQ图片20180122194820.png">
			</div>
			<div class="row" style=" height: 70px;">
			<div class="col-md-5" style="margin-top: 10px;">
				<div class="input-group input-group-lg" style="margin-top: 15px;">
					<input type="text" class="form-control" placeholder="搜索旅行地/酒店/旅游/景点门票/交通" style="height: 30px;width: 350px;"/>
					<button  type="button" class="btn btn-info" style="height: 30px;">
						<span class="glyphicon glyphicon-search"></span>
					</button>
				</div>
			</div>
			</div>
		</div>
	
			
			
			
		<div class="row" style="margin-top: 0px; margin-bottom: 20px;">
			<nav class="navbar-default" style="background: #3B85E6;border-radius:10px; height: 45px;">
				<div class="container-fluid">
					Brand and toggle get grouped for better mobile display
					<div class="navbar-header">
						<button type="button" class="navbar-toggle collapsed"
							data-toggle="collapse"
							data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
							<span class="sr-only">Toggle navigation</span> <span
								class="icon-bar"></span> <span class="icon-bar"></span> <span
								class="icon-bar"></span>
						</button>
						<a class="navbar-brand" href="#"><span style="color: white;">飞机</span></a>
						<a class="navbar-brand" href="#"><span style="color: white;">飞机</span></a>
						<a class="navbar-brand" href="#"><span style="color: white;">飞机</span></a>
						<a class="navbar-brand" href="#"><span style="color: white;">飞机</span></a>
						<a class="navbar-brand" href="#"><span style="color: white;">飞机</span></a>
						<a class="navbar-brand" href="#"><span style="color: white;">飞机</span></a>
						<a class="navbar-brand" href="#"><span style="color: white;">飞机</span></a>
					</div>
					<div class="collapse navbar-collapse"
						id="bs-example-navbar-collapse-1">
					</div>
				</div>
			</nav>

		</div>	
			 -->
			
	<!-- <div id="carousel-example-generic" class="carousel slide"
			data-ride="carousel">
			<ol class="carousel-indicators">
				<li data-target="#carousel-example-generic" data-slide-to="0"
					class="active"></li>
				<li data-target="#carousel-example-generic" data-slide-to="1"></li>
				<li data-target="#carousel-example-generic" data-slide-to="2"></li>
			</ol>

			Wrapper for slides
			<div class="carousel-inner" role="listbox" style="height: 300px;">
				<div class="item active">
					<img src="img/70010n000000eqqom1A90_1920_340_17.jpg">
					<div class="carousel-caption"></div>
				</div>
				<div class="item">
					<img src="img/700r0m000000dmfnbBE8F_1920_340_17.jpg">
					<div class="carousel-caption"></div>
				</div>
				<div class="item">
					<img src="img/700v0k000000c3iacAF22_1920_340_17.jpg">
					<div class="carousel-caption"></div>
				</div>
			</div>
			Controls
			<a class="left carousel-control" href="#carousel-example-generic"
				role="button" data-slide="prev"> <span
				class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
				<span class="sr-only">Previous</span>
			</a> <a class="right carousel-control" href="#carousel-example-generic"
				role="button" data-slide="next"> <span
				class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
				<span class="sr-only">Next</span>
			</a>
		</div>
</div>
 -->



	<table class="table table-bordered table-hover" style="width: 80%;margin: 0 auto;margin-top: 50px;text-align: center;">
		<tr>
			<td>
				<input placeholder="请输入内容.." id="keyWords" value="${param.name!}"/>
				<input type="button" value="搜索" onclick="searchGoods()"/>
			</td>
		</tr>
		<tr>
			<td>商品名称</td>
			<td>品牌</td>
		</tr>
			<#list list! as s>
				<tr>
					<td>${s.id!}</td>
					<td>${s.name!}</td>
				</tr>
			</#list>
		</table>


</body>
</html>