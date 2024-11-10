<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="copyright" content="All Rights Reserved, Copyright (C) 2013, 交大物流, Ltd." />
<title></title>
<link rel="stylesheet" type="text/css" href="../resources/admin/easyui/easyui/1.3.4/themes/default/easyui.css" />
<link rel="stylesheet" type="text/css" href="../resources/admin/easyui/css/wu.css" />
<link rel="stylesheet" type="text/css" href="../resources/admin/easyui/css/icon.css" />
<script type="text/javascript" src="../resources/admin/easyui/js/jquery-1.8.0.min.js"></script>
<script type="text/javascript" src="../resources/admin/easyui/easyui/1.3.4/jquery.easyui.min.js"></script>
<script type="text/javascript" src="../resources/admin/easyui/easyui/1.3.4/locale/easyui-lang-zh_CN.js"></script>
<body class="easyui-layout">

<!-- 修改密码窗口 -->
<div id="edit-dialog" class="easyui-dialog" data-options="closed:false,iconCls:'icon-save',modal:true,title:'修改密码',buttons:[{text:'确认修改',iconCls: 'icon-ok',handler:submitEdit}]" style="width:450px; padding:10px;">
	<form id="edit-form" method="post">
        <table>
           <tr>
                <td width="60" align="right">用户名:</td>
                <td><input type="text" name="username" class="wu-text easyui-validatebox" readonly="readonly" value="${admin.username }" /></td>
            </tr>
            <tr>
                <td width="60" align="right">原密码:</td>
                <td><input type="password" id="oldPassword" class="wu-text easyui-validatebox" data-options="required:true, missingMessage:'请填写密码'" /></td>
            </tr>
            <tr>
                <td width="60" align="right">新密码:</td>
                <td><input type="password" id="newPassword" class="wu-text easyui-validatebox" data-options="required:true, missingMessage:'请填写密码'" /></td>
            </tr>
            <tr>
                <td width="60" align="right">重复新密码:</td>
                <td><input type="password" id="reNewPassword" class="wu-text easyui-validatebox" data-options="required:true, missingMessage:'请填写密码'" /></td>
            </tr>
        </table>
    </form>
</div>

</body>

<!-- End of easyui-dialog -->
<script type="text/javascript">
	function submitEdit(){
		var validate = $("#edit-form").form("validate");
		if(!validate){
			$.messager.alert("消息提醒","请检查你输入的数据!","warning");
			return;
		}
		if($("#newPassword").val() != $("#reNewPassword").val()){
			$.messager.alert("消息提醒","两次密码输入不一致!","warning");
			return;
		}
		$.ajax({
			url:'edit_password',
			type:'post',
			data:{newpassword:$("#newPassword").val(),oldpassword:$("#oldPassword").val()},
			dataType:'json',
			success:function(data){
				if(data.type == 'success'){
					$.messager.alert("消息提醒","密码修改成功!","warning");
				}else{
					$.messager.alert("消息提醒",data.msg,"warning");
				}
			}
		})
	}
	
	
</script>