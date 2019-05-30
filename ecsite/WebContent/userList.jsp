<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "s" uri = "/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>userList画面</title>
</head>
<body>
	<div id = "header"></div>
	<div id = "main">
		<div id = "top">
			<p>userList</p>
		</div>
		<div>
			<h3>ユーザー情報は以下になります。</h3>
			<table>
				<tr>
					<th>ログインID</th>
					<th>ログインパスワード</th>
					<th>ユーザー名</th>
					<th>登録日</th>
				</tr>
			<s:iterator value = "userList">
				<tr>
					<td><s:property value = "loginId" /></td>
					<td><s:property value = "loginPass" /></td>
					<td><s:property value = "userName" /></td>
					<td><s:property value = "insert_date" /></td>
				</tr>
			</s:iterator>
			</table>
		</div>
		<div>
			<s:form action = "UserListDeleteConfirmAction">
				<s:submit value = "削除" />
			</s:form>
		</div>
	</div>
	<div id = "footer"></div>
</body>
</html>