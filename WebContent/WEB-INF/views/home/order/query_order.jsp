<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ include file="../common/header.jsp" %>
<link rel="stylesheet" type="text/css" href="../resources/home/css/order-style.css" />
<body>
	
<%@ include file="../common/navbar.jsp" %>
	<%@ include file="../common/slide.jsp" %>
	<!--aboupg-->
		<div class="sec aboutpg container">
			<div class="pg-nav col-sm-3">
				<div class="tit-ol">
					<p>在线下单</p>
				</div>
				<ul>
					<li><a href="../order/online_order">立即下单</a></li>
					<li><a href="../order/query_order">查询订单</a></li>
					<li><a href="../index/problem">常见问题</a></li>
				</ul>
				<div class="tit-co">
					<p>联系我们</p>
				</div>
				<ul>
					<li><a href="../index/contact_us">联系我们</a></li>
				</ul>
			</div>
			<div class="col-sm-9 introduce">
				<section class="title">
					<h1>
						查询物流订单
						<span>QUERY ORDER ONLINE</span>
					</h1>
				</section>
				<div class="onlinepg con-pad">
					<div>
						<form action="query_order" id="query_order_form">
						<ul class="row">
							<li class="col-sm-9 col-xs-12">
								<input type="text" placeholder="请输入快递单号进行查询" style="width:50%;" name="sn" value="${sn }"/>
								<input type="button" value="立即查询" onclick="javascript:document.getElementById('query_order_form').submit();" style="height:30px;"/>
							</li>
						</ul>
						</form>
					</div>
					<div class="aui-timeLine b-line">
                    <ul class="aui-timeLine-content">
                        <c:choose>
                        <c:when test="${empty orderStatusList}">
                        <c:if test="${not empty sn }">
                        <li class="aui-timeLine-content-item">
                            <em class="aui-timeLine-content-icon"></em>
                            <p>${msg}</p>
                        </li>
                        </c:if>
                        </c:when>
                        <c:otherwise>
                        <c:forEach items="${orderStatusList }" var="orderStatus">
                        <li class="aui-timeLine-content-item">
                            <em class="aui-timeLine-content-icon"></em>
                            <p>${orderStatus.content }</p>
                            <p style="margin-top: 10px;"><fmt:formatDate value="${orderStatus.createTime }" pattern="yyyy-MM-dd hh:mm:ss" /></p>
                        </li>
                        </c:forEach>
                        </c:otherwise>
                        </c:choose>
                        
                    </ul>
                </div>
				</div>
			</div>
		</div>
<%@ include file="../common/footer.jsp" %>
</body>