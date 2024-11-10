<%@ page language="java" contentType="text/html; charset=UTF-8"
	import="com.baidu.ueditor.ActionEnter"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%
	String action = request.getParameter("action");
    request.setCharacterEncoding( "utf-8" );
	response.setHeader("Content-Type" , "text/html");
	
	String rootPath = application.getRealPath( "/" );
	String rst = new ActionEnter( request, rootPath ).exec();
	if(action != null && ("listfile".equals(action) || "listimage".equals(action))){
		rootPath = rootPath.replace("\\", "/");
		rst = rst.replaceAll(rootPath, "/");
	}
	out.write( rst );
	
%>