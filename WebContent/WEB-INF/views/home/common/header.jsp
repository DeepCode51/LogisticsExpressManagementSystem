<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html lang="zh-CN">
<head>
<title>交大物流快递官网${title }</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<link rel="stylesheet" type="text/css" href="../resources/home/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="../resources/home/css/main.css" />
<link rel="shortcut icon" href="../resources/home/images/favicon.ico">
<script>
function addFavorite(url, title) {
	try {
		window.external.addFavorite(url, title);
	} catch (e){
		try {
			window.sidebar.addPanel(title, url, '');
        	} catch (e) {
			alert("请按 Ctrl+D 键添加到收藏夹", 'notice');
		}
	}
}
</script>
</head>
