<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "s" uri = "/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>itemCreateConfirm画面</title>
</head>
<body>
	<div id = "header"></div>
	<div id = "main">
		<div id = "top">
			<p>ItemCreateConfirm</p>
		</div>
		<div>
			<h3>登録する内容は以下でよろしいですか？</h3>
			<table>
			<s:form action = "ItemCreateCompleteAction">
				<tr>
					<td>
						<label>商品名称：</label>
					</td>
					<td>
						<s:property value = "itemName" />
					</td>
				</tr>
				<tr>
					<td>
						<label>商品価格：</label>
					</td>
					<td>
						<s:property value = "itemPrice" />
					</td>
				</tr>
				<tr>
					<td>
						<label>在庫数：</label>
					</td>
					<td>
						<s:property value = "itemStock" />
					</td>
				</tr>
				<s:submit value = "完了" />
			</s:form>
			</table>
		</div>
	</div>
	<div id = "footer"></div>
</body>
</html>