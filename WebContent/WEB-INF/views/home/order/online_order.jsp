<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ include file="../common/header.jsp" %>
<style>
input,.required{
	height: 40px;
	padding: 10px;
	width: 100%;
	border: 1px solid #CCCCCC;
}
</style>
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
						在线下单
						<span>ORDER ONLINE</span>
					</h1>
				</section>
				<form id="order-form">
				<div class="onlinepg con-pad">
					<div>
						<p style="font-size: 18px;font-weight: bold;color: #00389C;">发货人信息</p>
						<ul class="row">
							<li class="col-sm-6 col-xs-12">
								<p><i>*</i>发货人：</p>
								<input type="text" style="" class="required" name="sender" msg="请填写发货人姓名"/>
							</li>
							<li class="col-sm-6 col-xs-12">
								<p><i>*</i>手机</p>
								<input type="text" class="required" name="senderMobile" msg="请填写发货人手机" maxlength="11"/>
							</li>
							<li class="col-sm-6 col-xs-12">
								<p>固定电话</p>
								<input type="text" name="senderTel"/>
							</li>
							<li class="col-sm-6 col-xs-12">
								<p><i>*</i>发货地址</p>
								<input type="text" class="required" name="senderAddress" msg="请填写发货人地址"/>
							</li>
						</ul>
					</div>
					<div>
						<p>收货人信息</p>
						<ul class="row">
							<li class="col-sm-6 col-xs-12">
								<p><i>*</i>收货人：</p>
								<input type="text" class="required" name="reciever" msg="请填写收货人姓名"/>
							</li>
							<li class="col-sm-6 col-xs-12">
								<p><i>*</i>手机</p>
								<input type="text" class="required" name="recieverMobile" msg="请填写收货人手机" maxlength="11"/>
							</li>
							<li class="col-sm-6 col-xs-12">
								<p>固定电话</p>
								<input type="text" name="recieverTel"/>
							</li>
							<li class="col-sm-6 col-xs-12">
								<p><i>*</i>收货地址</p>
								<input type="text" class="required" name="recieverAddress" msg="请填写收货人地址"/>
							</li>
						</ul>
					</div>
					<div>
						<p>货物信息</p>
						<ul class="row">
							<li class="col-sm-6 col-xs-12">
								<p><i>*</i>货物名称：</p>
								<input type="text" class="required" name="goodsName" msg="请填写货物名称"/>
							</li>
							<li class="col-sm-6 col-xs-12">
								<p>报价申明（>100元）：</p>
								<input type="text" class="required" name="goodsPrice" msg="请填写申报价格"/>
							</li>
							<li class="col-sm-6 col-xs-12">
								<p>货物重量：</p>
								<input type="text" class="required" name="goodsWeight" msg="请填写货物重量"/>
							</li>
							<li class="col-sm-6 col-xs-12">
								<p>货物体积：</p>
								<input type="text" class="required" name="goodsVolum" msg="请填写货物体积"/>
							</li>
							<li class="sm">
								<p>注：我们的工作人员会在接货时重新称重，此估算仅供参考。</p>
							</li>
						</ul>
					</div>
					<div> 
						<p>备注信息</p>
						<textarea name="remark"></textarea>
					</div>
					<p class="mes">注：我们的工作人员在收到发货请求会主动联系，请注意接听电话。</p>
					<input type="button" id="submit-btn" value="立即下单" />
				</div>
				</form>
			</div>
		</div>
<%@ include file="../common/footer.jsp" %>
<script>
$(document).ready(function(){
	$("input").css({height:'40px'});
	$("#submit-btn").click(function(){
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
				url:'add_order',
				type:'post',
				data:$("#order-form").serialize(),
				dataType:'json',
				success:function(rst){
					if(rst.type == 'success'){
						alert('下单成功，快递单号：' + rst.sn + '请牢记单号以便查询物流信息！');
						window.location.href = 'query_order?sn=' + rst.sn;
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