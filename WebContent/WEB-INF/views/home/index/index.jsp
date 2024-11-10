<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ include file="../common/header.jsp" %>
<body>
	
<%@ include file="../common/navbar.jsp" %>
	<%@ include file="../common/slide.jsp" %>
	<!-- sec -->
	<div class="sec">
		<div class="container">
			<div class="row">
				<div class="col-sm-5">
					<div class="online-add square-title">
						<div>
							<p>网上下单<span class="glyphicon glyphicon-arrow-right"></span></p>
						</div>
						<ul class="clearfix">
							<li>
								<a href="../order/online_order">
									立即下单
								</a>
							</li>
							<li><a href="../order/query_order">查询订单</a></li>
						</ul>
					</div>
					<div class="service square-title">
						<div>
							<p>服务介绍<span class="glyphicon glyphicon-arrow-right"></span></p>
						</div>
						<ul class="clearfix">
							<li>
								<a href="buss">
									<img src="../resources/home/images/serli/2.png" />
									<span>物流卡航</span>
								</a>
							</li>
							<li>
								<a href="buss1">
									<img src="../resources/home/images/serli/6.png" />
									<span>物流空运</span>
								</a>
							</li>
							<li>
								<a href="buss2">
									<img src="../resources/home/images/serli/5.png" />
									<span>限时到达</span>
								</a>
							</li>
							<li>
								<a href="buss3">
									<img src="../resources/home/images/serli/4.png" />
									<span>物流普运</span>
								</a>
							</li>
							<li>
								<a href="buss4">
									<img src="../resources/home/images/serli/3.png" />
									<span>城际快线</span>
								</a>
							</li>
							<li>
								<a href="buss5">
									<img src="../resources/home/images/serli/1.png" />
									<span>合作共赢</span>
								</a>
							</li>
						</ul>
					</div>
				</div>
				<div class="col-sm-7">
					<div class="news" style="padding-top: 0px;">
						<div class="news-type">
							<ul class="clearfix">
								<li>新闻资讯</li>
								<li class="more"><a href="news_list">查看更多</a></li>
							</ul>
						</div>
						<ul class="news-list">
							<c:forEach items="${newsList }" var="news">
							<li>
								<a href="news_detail?id=${news.id }">
									<span><fmt:formatDate value="${news.createTime }" pattern="yyyy-MM-dd hh:mm:ss" /></span>
									<p>${news.title }</p>
								</a>
							</li>
							</c:forEach>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
<%@ include file="../common/footer.jsp" %>
</body>