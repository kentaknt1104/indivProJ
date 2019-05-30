<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "s" uri = "/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src = "http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<title>itemListDelete画面</title>
<script type = "text/javascript">
	function submitAction(url) {
		$('form').attr('action', url);
		$('form').submit();
	}
</script>
</head>
<body>
	<h3>全ての商品を削除します。よろしいですか？</h3>
	<s:form>
		<input type = "button" value = "ＯＫ" onclick = "submitAction('ItemListDeleteCompleteAction')" />
		<input type = "button" value = "キャンセル" onclick = "submitAction('ItemListAction')" />
	</s:form>
</body>
</html>