<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "s" uri = "/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta http-equiv = "Content-Type-Style" content = "text/css" />
	<meta http-equiv = "Content-Type-Script" content = "text/javascript" />
	<meta http-equiv = "imagetoolbar" content = "no" />
	<meta name = "description" content = "" />
	<meta name = "keywords" content = "" />
	<title>itemCreate画面</title>
</head>
<body>
	<div id = "header"></div>
	<div id = "main">
		<div id = "top">
			<p>itemCreate</p>
		</div>
		<div>
			<s:if test = "errorMessage != ''">
				<s:property value = "errorMessage" />
			</s:if>
			<table>
			<s:form action = "ItemCreateConfirmAction">
				<tr>
					<td>商品名称：</td>
					<td><input type = "text" name = "itemName" value = "" /></td>
				</tr>
				<tr>
					<td>商品価格：</td>
					<td><input type = "text" name = "itemPrice" value = "" /></td>
				</tr>
				<tr>
					<td>在庫数：</td>
					<td><input type = "text" name = "itemStock" value = "" /></td>
				</tr>
				<s:submit value = "登録" />
			</s:form>
			</table>
		</div>
		<div>
			<span>前画面に戻る場合は</span>
			<a href = '<s:url action = "AdminAction" />'>こちら</a>
		</div>
	</div>
	<div id = "footer"></div>
</body>
</html>