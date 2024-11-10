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
					<p>联系我们</p>
				</div>
				<ul>
					<li><a href="contact_us">联系我们</a></li>
				</ul>
				<div class="tit-ol">
					<p>在线下单</p>
				</div>
				<ul>
					<li><a href="../order/online_order">立即下单</a></li>
					<li><a href="../order/query_order">查询订单</a></li>
					<li><a href="problem">常见问题</a></li>
				</ul>
			</div>
			<div class="col-sm-9 introduce">
				<section class="title">
					<h1>
						联系我们
						<span>CONTACT US</span>
					</h1>
				</section>
				<div class="contact con-pad">
					<div class="address">
						<p>公司地址：上海市陆家嘴环路88888号</p>
						<p>联系电话：021-16816888</p>
						<p>联系邮箱：ylrc@yuanlrc.com</p>
					</div>
					<div class="map">
						<iframe src="../resources/home/map/map.html"></iframe>
						<span>地图加载中...</span>
					</div>
				</div>
				<div id="message" class="row">
						<p>在线留言</p>
						<form id="leave-msg-form">
							<div class="col-sm-6">
								<p>姓名：</p>
								<input type="text" placeholder="姓名" class="required" name="name" msg="请填写姓名" />
							</div>
							<div class="col-sm-6">
								<p>联系电话：</p>
								<input type="tel" placeholder="电话号码" class="required" name="tel" msg="请填写联系电话" />
							</div>
							<div class="col-xs-12">
							<p>发送的消息：</p>
							<textarea placeholder="消息" class="required" name="content" msg="请填写留言内容" ></textarea>
							<input type="button" id="submit-msg-btn" value="立即发送" />
							</div>
						</form>
					</div>
			</div>
		</div>
<%@ include file="../common/footer.jsp" %>
<script>
$(document).ready(function(){
	$("#submit-msg-btn").click(function(){
		var flag = true;
		$(".required").each(function(i,e){
			if($(e).val() == ''){
				alert($(e).attr('msg'));
				flag = false;
				return false;
			}
		});
		if(flag){
			$.ajax({
				url:'add_leave_msg',
				type:'post',
				data:$("#leave-msg-form").serialize(),
				dataType:'json',
				success:function(rst){
					if(rst.type == 'success'){
						alert('留言成功！');
						$(".required").val('');
					}else{
						alert(rst.msg);
					}
				}
			});
		}
	});
});
</script>
</body>