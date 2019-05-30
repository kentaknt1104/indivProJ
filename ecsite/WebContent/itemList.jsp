<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "s" uri = "/struts-tags" %>
<!DOCTYPE html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>itemList画面</title>
</head>
<body>
	<div id = "header"></div>
	<div id = "main">
		<div id = "top">
			<p>itemList</p>
		</div>
		<div>
		<s:if test = "itemList == null">
			<h3>商品情報はありません。</h3>
			<p>新規登録は
				<a href = "<s:url action = 'itemCreateAction' />">こちら</a>
			</p>
		</s:if>
		<s:elseif test = "itemList != null">
			<h3>商品情報は以下になります。</h3>
			<table>
				<tr>
					<th>商品名</th>
					<th>価格</th>
					<th>在庫数</th>
					<th>購入日</th>
				</tr>
			<s:iterator value = "ItemList">
				<tr>
					<td><s:property value = "itemName" /></td>
					<td><s:property value = "itemPrice" /></td>
					<td><s:property value = "itemStock" /></td>
					<td><s:property value = "insert_date" /></td>
				</tr>
			</s:iterator>
			</table>
			<s:form action = "ItemListDeleteConfirmAction">
				<s:submit value = "削除" />
			</s:form>
		</s:elseif>
		</div>
		<div>
			<p>
				管理者画面に戻る場合は
				<a href = '<s:url action = "AdminAction" />'>こちら</a>
			</p>
		</div>
	</div>
	<div id = "footer"></div>
</body>
</html>