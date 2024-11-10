<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="../common/header.jsp"%>
<div class="easyui-layout" data-options="fit:true">
    <!-- Begin of toolbar -->
    <div id="wu-toolbar">
        <div class="wu-toolbar-button">
            <%@include file="../common/menus.jsp"%>
        </div>
        <div class="wu-toolbar-search">
            <label>发件人:</label><input id="search-sender" class="wu-text" style="width:100px">
            <label>发件人手机:</label><input id="search-senderMobile" class="wu-text" style="width:100px">
            <label>收件人:</label><input id="search-reciever" class="wu-text" style="width:100px">
            <label>收件人手机:</label><input id="search-recieverMobile" class="wu-text" style="width:100px">
            
            <a href="#" id="search-btn" class="easyui-linkbutton" iconCls="icon-search">搜索</a>
        </div>
    </div>
    <!-- End of toolbar -->
    <table id="data-datagrid" class="easyui-datagrid" toolbar="#wu-toolbar"></table>
</div>
<!-- Begin of easyui-dialog -->
<div id="add-dialog" class="easyui-dialog" data-options="closed:true,iconCls:'icon-save'" style="width:420px; padding:10px;">
	<form id="add-form" method="post">
        <table>
        	<!-- 发件人 -->
        	<tr>
                <td width="60" align="right">发件人:</td>
                <td><input type="text" name="sender" id="sender" class="wu-text easyui-validatebox" data-options="required:true, missingMessage:'请填写发件人'" /></td>
            </tr>
            <tr>
                <td width="60" align="right">发件人手机:</td>
                <td><input type="text" name="senderMobile" id="senderMobile" class="wu-text easyui-validatebox" data-options="required:true, missingMessage:'请填写发件人手机'" /></td>
            </tr>
            <tr>
                <td width="60" align="right">发件人电话:</td>
                <td><input type="text" name="senderTel" id="senderTel" class="wu-text" /></td>
            </tr>
            <tr>
                <td width="60" align="right">发件人地址:</td>
                <td><input type="text" name="senderAddress" id="senderAddress" class="wu-text easyui-validatebox" data-options="required:true, missingMessage:'请填写发件人地址'" /></td>
            </tr>
            <!-- 收件人 -->
        	<tr>
                <td width="60" align="right">收件人:</td>
                <td><input type="text" name="reciever" id="reciever" class="wu-text easyui-validatebox" data-options="required:true, missingMessage:'请填写收件人'" /></td>
            </tr>
            <tr>
                <td width="60" align="right">收件人手机:</td>
                <td><input type="text" name="recieverMobile" id="recieverMobile" class="wu-text easyui-validatebox" data-options="required:true, missingMessage:'请填写收件人手机'" /></td>
            </tr>
            <tr>
                <td width="60" align="right">收件人电话:</td>
                <td><input type="text" name="recieverTel" id="recieverTel" class="wu-text" /></td>
            </tr>
            <tr>
                <td width="60" align="right">收件人地址:</td>
                <td><input type="text" name="recieverAddress" id="recieverAddress" class="wu-text easyui-validatebox" data-options="required:true, missingMessage:'请填写收件人地址'" /></td>
            </tr>
            <!--货物 -->
        	<tr>
                <td width="60" align="right">货物名称:</td>
                <td><input type="text" name="goodsName" id="goodsName" class="wu-text easyui-validatebox" data-options="required:true, missingMessage:'请填写货物名称'" /></td>
            </tr>
            <tr>
                <td width="60" align="right">报价申明:</td>
                <td><input type="text" name="goodsPrice" id="goodsPrice" class="wu-text easyui-validatebox" data-options="required:true, missingMessage:'请填写报价申明'" /></td>
            </tr>
            <tr>
                <td width="60" align="right">货物重量:</td>
                <td><input type="text" name="goodsWeight" id="goodsWeight" class="wu-text easyui-validatebox" data-options="required:true, missingMessage:'请填写货物重量'"/></td>
            </tr>
            <tr>
                <td width="60" align="right">货物体积:</td>
                <td><input type="text" name="goodsVolum" id="goodsVolum" class="wu-text easyui-validatebox" data-options="required:true, missingMessage:'请填写货物体积'" /></td>
            </tr>
            <tr>
                <td align="right">订单备注:</td>
                <td><textarea id="add-remark" name="remark" rows="6" class="wu-textarea" style="width:260px"></textarea></td>
            </tr>
        </table>
    </form>
</div>
<!-- 修改窗口 -->
<div id="edit-dialog" class="easyui-dialog" data-options="closed:true,iconCls:'icon-save'" style="width:450px; padding:10px;">
	<form id="edit-form" method="post">
        <input type="hidden" name="id" id="edit-id">
        <table>
           <!-- 发件人 -->
        	<tr>
                <td width="60" align="right">发件人:</td>
                <td><input type="text" name="sender" id="edit-sender" class="wu-text easyui-validatebox" data-options="required:true, missingMessage:'请填写发件人'" /></td>
            </tr>
            <tr>
                <td width="60" align="right">发件人手机:</td>
                <td><input type="text" name="senderMobile" id="edit-senderMobile" class="wu-text easyui-validatebox" data-options="required:true, missingMessage:'请填写发件人手机'" /></td>
            </tr>
            <tr>
                <td width="60" align="right">发件人电话:</td>
                <td><input type="text" name="senderTel" id="edit-senderTel" class="wu-text" /></td>
            </tr>
            <tr>
                <td width="60" align="right">发件人地址:</td>
                <td><input type="text" name="senderAddress" id="edit-senderAddress" class="wu-text easyui-validatebox" data-options="required:true, missingMessage:'请填写发件人地址'" /></td>
            </tr>
            <!-- 收件人 -->
        	<tr>
                <td width="60" align="right">收件人:</td>
                <td><input type="text" name="reciever" id="edit-reciever" class="wu-text easyui-validatebox" data-options="required:true, missingMessage:'请填写收件人'" /></td>
            </tr>
            <tr>
                <td width="60" align="right">收件人手机:</td>
                <td><input type="text" name="recieverMobile" id="edit-recieverMobile" class="wu-text easyui-validatebox" data-options="required:true, missingMessage:'请填写收件人手机'" /></td>
            </tr>
            <tr>
                <td width="60" align="right">收件人电话:</td>
                <td><input type="text" name="recieverTel" id="edit-recieverTel" class="wu-text" /></td>
            </tr>
            <tr>
                <td width="60" align="right">收件人地址:</td>
                <td><input type="text" name="recieverAddress" id="edit-recieverAddress" class="wu-text easyui-validatebox" data-options="required:true, missingMessage:'请填写收件人地址'" /></td>
            </tr>
            <!--货物 -->
        	<tr>
                <td width="60" align="right">货物名称:</td>
                <td><input type="text" name="goodsName" id="edit-goodsName" class="wu-text easyui-validatebox" data-options="required:true, missingMessage:'请填写货物名称'" /></td>
            </tr>
            <tr>
                <td width="60" align="right">报价申明:</td>
                <td><input type="text" name="goodsPrice" id="edit-goodsPrice" class="wu-text easyui-validatebox" data-options="required:true, missingMessage:'请填写报价申明'" /></td>
            </tr>
            <tr>
                <td width="60" align="right">货物重量:</td>
                <td><input type="text" name="goodsWeight" id="edit-goodsWeight" class="wu-text easyui-validatebox" data-options="required:true, missingMessage:'请填写货物重量'"/></td>
            </tr>
            <tr>
                <td width="60" align="right">货物体积:</td>
                <td><input type="text" name="goodsVolum" id="edit-goodsVolum" class="wu-text easyui-validatebox" data-options="required:true, missingMessage:'请填写货物体积'" /></td>
            </tr>
            <tr>
                <td align="right">订单备注:</td>
                <td><textarea id="edit-remark" name="remark" rows="6" class="wu-textarea" style="width:260px"></textarea></td>
            </tr>
        </table>
    </form>
</div>
<!-- Begin of easyui-dialog -->
<div id="add-status-dialog" class="easyui-dialog" data-options="closed:true,iconCls:'icon-save'" style="width:420px; padding:10px;">
	<form id="add-status-form" method="post">
        <table>
        	<!-- 发件人 -->
        	<tr>
                <td width="60" align="right">订单编号:</td>
                <td><input type="text" name="orderSn" id="add-status-orderSn" readonly="readonly" class="wu-text easyui-validatebox" data-options="required:true, missingMessage:'请填写订单编号'" /></td>
            </tr>
            <tr>
                <td align="right">状态备注:</td>
                <td><textarea id="add-content" name="content" rows="6" class="wu-textarea easyui-validatebox" style="width:260px" data-options="required:true, missingMessage:'请填写订单状态详情'"></textarea></td>
            </tr>
        </table>
    </form>
</div>
<!-- Begin of easyui-dialog -->
<div id="view-status-dialog" class="easyui-dialog" data-options="closed:true,iconCls:'icon-save'" style="width:620px;height:450px; padding:10px;">
	<table id="status-data-datagrid" class="easyui-datagrid"></table>
</div>
<%@include file="../common/footer.jsp"%>

<!-- End of easyui-dialog -->
<script type="text/javascript">
	
	
	
	/**
	*  添加记录
	*/
	function add(){
		var validate = $("#add-form").form("validate");
		if(!validate){
			$.messager.alert("消息提醒","请检查你输入的数据!","warning");
			return;
		}
		var data = $("#add-form").serialize();
		$.ajax({
			url:'add',
			dataType:'json',
			type:'post',
			data:data,
			success:function(data){
				if(data.type == 'success'){
					$.messager.alert('信息提示','添加成功！','info');
					//$("#add-content").val('');
					$('#add-dialog').dialog('close');
					$('#data-datagrid').datagrid('reload');
				}else{
					$.messager.alert('信息提示',data.msg,'warning');
				}
			}
		});
	}
	
	function addStatus(){
		var validate = $("#add-status-form").form("validate");
		if(!validate){
			$.messager.alert("消息提醒","请检查你输入的数据!","warning");
			return;
		}
		var data = $("#add-status-form").serialize();
		$.ajax({
			url:'add_status',
			dataType:'json',
			type:'post',
			data:data,
			success:function(data){
				if(data.type == 'success'){
					$.messager.alert('信息提示','添加成功！','info');
					//$("#add-content").val('');
					$('#add-status-dialog').dialog('close');
					$('#data-datagrid').datagrid('reload');
				}else{
					$.messager.alert('信息提示',data.msg,'warning');
				}
			}
		});
	}
	
	function edit(){
		var validate = $("#edit-form").form("validate");
		if(!validate){
			$.messager.alert("消息提醒","请检查你输入的数据!","warning");
			return;
		}
		var data = $("#edit-form").serialize();
		$.ajax({
			url:'edit',
			dataType:'json',
			type:'post',
			data:data,
			success:function(data){
				if(data.type == 'success'){
					$.messager.alert('信息提示','编辑成功！','info');
					//$("#add-content").val('');
					$('#edit-dialog').dialog('close');
					$('#data-datagrid').datagrid('reload');
				}else{
					$.messager.alert('信息提示',data.msg,'warning');
				}
			}
		});
	}
	
	/**
	* 删除记录
	*/
	function remove(){
		$.messager.confirm('信息提示','确定要删除该记录？', function(result){
			if(result){
				var item = $('#data-datagrid').datagrid('getSelections');
				if(item == null || item.length == 0){
					$.messager.alert('信息提示','请选择要删除的数据！','info');
					return;
				}
				var ids = '';
				for(var i=0;i<item.length;i++){
					ids += item[i].id + ',';
				}
				$.ajax({
					url:'delete',
					dataType:'json',
					type:'post',
					data:{ids:ids},
					success:function(data){
						if(data.type == 'success'){
							$.messager.alert('信息提示','删除成功！','info');
							$('#data-datagrid').datagrid('reload');
						}else{
							$.messager.alert('信息提示',data.msg,'warning');
						}
					}
				});
			}	
		});
	}
	
	/**
	* Name 打开添加窗口
	*/
	function openAdd(){
		//$('#add-form').form('clear');
		$('#add-dialog').dialog({
			closed: false,
			modal:true,
            title: "添加订单信息",
            buttons: [{
                text: '确定',
                iconCls: 'icon-ok',
                handler: add
            }, {
                text: '取消',
                iconCls: 'icon-cancel',
                handler: function () {
                    $('#add-dialog').dialog('close');                    
                }
            }],
            onBeforeOpen:function(){
            	//$("#add-form input").val('');
            }
        });
	}
	
	function openAddStatus(){
		//$('#add-form').form('clear');
		var item = $('#data-datagrid').datagrid('getSelected');
		if(item == null || item.length == 0){
			$.messager.alert('信息提示','请选择要更新的订单数据！','info');
			return;
		}
		$('#add-status-dialog').dialog({
			closed: false,
			modal:true,
            title: "添加订单状态信息",
            buttons: [{
                text: '确定',
                iconCls: 'icon-ok',
                handler: addStatus
            }, {
                text: '取消',
                iconCls: 'icon-cancel',
                handler: function () {
                    $('#add-status-dialog').dialog('close');                    
                }
            }],
            onBeforeOpen:function(){
            	$("#add-status-orderSn").val(item.sn);
            }
        });
	}
	
	function openEdit(){
		//$('#add-form').form('clear');
		var item = $('#data-datagrid').datagrid('getSelected');
		if(item == null || item.length == 0){
			$.messager.alert('信息提示','请选择要编辑的数据！','info');
			return;
		}
		$('#edit-dialog').dialog({
			closed: false,
			modal:true,
            title: "编辑订单信息",
            buttons: [{
                text: '确定',
                iconCls: 'icon-ok',
                handler: edit
            }, {
                text: '取消',
                iconCls: 'icon-cancel',
                handler: function () {
                    $('#edit-dialog').dialog('close');                    
                }
            }],
            onBeforeOpen:function(){
            	//$("#add-form input").val('');
            	$("#edit-id").val(item.id);
            	$("#edit-sender").val(item.sender);
            	$("#edit-senderMobile").val(item.senderMobile);
            	$("#edit-senderTel").val(item.senderTel);
            	$("#edit-senderAddress").val(item.senderAddress);
            	
            	$("#edit-reciever").val(item.reciever);
            	$("#edit-recieverMobile").val(item.recieverMobile);
            	$("#edit-recieverTel").val(item.recieverTel);
            	$("#edit-recieverAddress").val(item.recieverAddress);
            	
            	$("#edit-goodsName").val(item.goodsName);
            	$("#edit-goodsPrice").val(item.goodsPrice);
            	$("#edit-goodsWeight").val(item.goodsWeight);
            	$("#edit-goodsVolum").val(item.goodsVolum);
            	
            	$("#edit-remark").val(item.remark);
            }
        });
	}
	
	function openViewStatus(sn){
		$('#view-status-dialog').dialog({
			closed: false,
			modal:true,
            title: "查看订单状态信息",
            buttons: [{
                text: '确定',
                iconCls: 'icon-ok',
                handler: function () {
                    $('#view-status-dialog').dialog('close');                    
                }
            }],
            onBeforeOpen:function(){
            	$('#status-data-datagrid').datagrid({
            		url:'status_list?orderSn='+sn,
            		rownumbers:true,
            		singleSelect:true,
            		pageSize:20,           
            		pagination:true,
            		multiSort:true,
            		fitColumns:true,
            		idField:'id',
            		nowrap:false,
            		fit:true,
            		columns:[[
            			{ field:'chk',checkbox:true},
            			{ field:'content',title:'状态信息',width:300,sortable:true},
            			{ field:'createTime',title:'更新时间',width:150,formatter:function(value,row,index){
            				return format(value);
            			}},
            		]]
            	});
            }
        });
	}
	
	//搜索按钮监听
	$("#search-btn").click(function(){
		var option = {sender:$("#search-sender").val()};
		option.senderMobile = $("#search-senderMobile").val();
		option.reciever = $("#search-reciever").val();
		option.recieverMobile = $("#search-recieverMobile").val();
		$('#data-datagrid').datagrid('reload',option);
	});
	
	function add0(m){return m<10?'0'+m:m }
	function format(shijianchuo){
	//shijianchuo是整数，否则要parseInt转换
		var time = new Date(shijianchuo);
		var y = time.getFullYear();
		var m = time.getMonth()+1;
		var d = time.getDate();
		var h = time.getHours();
		var mm = time.getMinutes();
		var s = time.getSeconds();
		return y+'-'+add0(m)+'-'+add0(d)+' '+add0(h)+':'+add0(mm)+':'+add0(s);
	}
	
	/** 
	* 载入数据
	*/
	$('#data-datagrid').datagrid({
		url:'list',
		rownumbers:true,
		singleSelect:true,
		pageSize:20,           
		pagination:true,
		multiSort:true,
		fitColumns:true,
		idField:'id',
		nowrap:false,
		fit:true,
		columns:[[
			{ field:'chk',checkbox:true},
			{ field:'sn',title:'订单编号',width:120,sortable:true},
			{ field:'sender',title:'发件人',width:60,sortable:true},
			{ field:'senderMobile',title:'发件人手机',width:100,sortable:true},
			{ field:'senderAddress',title:'发件人地址',width:160,sortable:true},
			{ field:'reciever',title:'收件人',width:60,sortable:true},
			{ field:'recieverMobile',title:'收件人手机',width:100,sortable:true},
			{ field:'recieverTel',title:'收件人电话',width:110,sortable:true},
			{ field:'recieverAddress',title:'收件人地址',width:160,sortable:true},
			{ field:'goodsName',title:'货物名称',width:60,sortable:true},
			{ field:'goodsPrice',title:'申报价格',width:60,sortable:true},
			{ field:'goodsWeight',title:'重量',width:60,sortable:true},
			{ field:'goodsVolum',title:'体积',width:160,sortable:true},
			{ field:'createTime',title:'时间',width:150,formatter:function(value,row,index){
				return format(value);
			}},
			{ field:'id',title:'操作',width:100,formatter:function(value,row,index){
				var test = '<a class="view-status" onclick="openViewStatus('+row.sn+')"></a>'
				return test;
			}},
		]],
		onLoadSuccess:function(data){  
			$('.view-status').linkbutton({text:'查看状态',plain:true,iconCls:'icon-eye'});  
		 }  
	});
</script>