<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<nav class="navbar navbar-default">
	<div class="container">
		<!-- Brand and toggle get grouped for better mobile display -->
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
		        <span class="sr-only">Toggle navigation</span>
		        <span class="icon-bar"></span>
		        <span class="icon-bar"></span>
		        <span class="icon-bar"></span>
		    </button>
<%--			<a class="navbar-brand" href="../index/index"><img src="../resources/home/images/logo.png"></a>--%>
		</div>

		<!-- Collect the nav links, forms, and other content for toggling -->
		<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav navbar-right">
				<li class="${indexActive }">
					<a href="../index/index">网站首页</a>
				</li>
				<li class="${aboutusActive }">
					<a href="../index/about_us">关于我们</a>
				</li>
				<li class="${orderActive }">
					<a href="../order/online_order">在线下单</a>
				</li>
				<li class="${bussActive }">
					<a href="../index/buss">业务范围</a>
				</li>
				<li class="${newsActive }">
					<a href="../index/news_list">新闻资讯</a>
				</li>
				<li class="${contactusActive }">
					<a href="../index/contact_us">联系我们</a>
				</li>
			</ul>
			
		</div>
		<!-- /.navbar-collapse -->
	</div>
	<!-- /.container-fluid -->
</nav>