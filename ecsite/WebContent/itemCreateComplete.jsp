<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "s" uri = "/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>itemCreateComplete画面</title>
</head>
<body>
	<div id = "header"></div>
	<div id = "main">
		<div id = "top">
			<p>itemCreateComplete</p>
		</div>
		<div>
			<h3>登録が完了しました。</h3>
			<span>管理者画面は</span>
			<a href = '<s:url action = "AdminAction" />'>こちら</a>
		</div>
	</div>
	<div id = "footer"></div>
</body>
</html>