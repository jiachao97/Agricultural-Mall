<%@ page language="java" pageEncoding="UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>菜单</title>
<link href="${pageContext.request.contextPath}/dtree/left.css"
	rel="stylesheet" type="text/css" />
<link rel="StyleSheet"
	href="${pageContext.request.contextPath}/dtree/dtree.css"
	type="text/css" />
</head>
<body>
	<table width="100" border="0" cellspacing="0" cellpadding="0">
		<tr>
			<td height="12"></td>
		</tr>
	</table>
	<table width="100%" border="0">
		<tr>
			<td>
				<div class="dtree">

					<a href="javascript: d.openAll();">展开</a> | <a
						href="javascript: d.closeAll();">关闭</a>

					<script type="text/javascript"
						src="${pageContext.request.contextPath}/dtree/dtree.js"></script>
					<script type="text/javascript">
					
						d = new dTree('d');
						d.add('01', -1, '菜单');
						
						d.add('0104', '01', '商品管理');
						d.add('010401', '0104', '&nbsp;&nbsp;&nbsp;--特色推荐', '${pageContext.request.contextPath}/backStage/feature.action', '', 'mainFrame');
						d.add('010402', '0104', '&nbsp;&nbsp;&nbsp;--农资管理');
						d.add('01040101', '010402', '&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;--种子', '${pageContext.request.contextPath}/backStage/seed.action', '', 'mainFrame');
						d.add('01040102', '010402', '&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;--农药', '${pageContext.request.contextPath}/backStage/pesticide.action', '', 'mainFrame');
						d.add('01040103', '010402', '&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;--农具', '${pageContext.request.contextPath}/backStage/tool.action', '', 'mainFrame');
						d.add('01040104', '010402', '&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;--农业书籍', '${pageContext.request.contextPath}/backStage/book.action', '', 'mainFrame');
						
						d.add('0105', '01', '订单管理');
						d.add('010501', '0105', '&nbsp;&nbsp;&nbsp;--所有订单', '${pageContext.request.contextPath}/backStage/order.action', '', 'mainFrame');
						
						document.write(d);
					</script>
				</div>
			</td>
		</tr>
	</table>
</body>
</html>
