<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ include file="../common/header.jsp" %>
<body>
	
<%@ include file="../common/navbar.jsp" %>
	<%@ include file="../common/slide.jsp" %>
	<!--aboupg-->
		<div class="sec aboutpg container">
			<div class="pg-nav col-sm-3">
				<div class="tit-ab">
					<p>新闻资讯</p>
				</div>
				<ul>
					<li><a href="news_list">新闻中心</a></li>
				</ul>
				<div class="tit-ol">
					<p>在线下单</p>
				</div>
				<ul>
					<li><a href="../order/online_order">立即下单</a></li>
					<li><a href="../order/query_order">查询订单</a></li>
					<li><a href="problem">常见问题</a></li>
				</ul>
				<div class="tit-co">
					<p>联系我们</p>
				</div>
				<ul>
					<li><a href="contact_us">联系我们</a></li>
				</ul>
			</div>
			<div class="col-sm-9">
				<section class="title">
					<h1>
						常见问题
						<span>COMMON PROBLEMS</span>
					</h1>
				</section>
				<div class="news-con con-pad">
					<ul>
						<c:forEach items="${newsList }" var="news">
						<li>
							<a href="news_detail?id=${news.id }">
								<h2>${news.title }</h2>
							</a>
						</li>
						</c:forEach>
					</ul>
				</div>
			</div>
		</div>
<%@ include file="../common/footer.jsp" %>
</body>