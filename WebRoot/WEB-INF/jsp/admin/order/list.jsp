<%@ page language="java" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<HTML>
	<HEAD>
		<meta http-equiv="Content-Language" content="zh-cn">
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<link href="${pageContext.request.contextPath}/dtree/Style1.css" rel="stylesheet" type="text/css" />
		<script type="text/javascript" src="${pageContext.request.contextPath}/dtree/jquery-1.11.3.min.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/layer/layer.js"></script>
		<script type="text/javascript">
				function showDetail(orders_id){
					//alert(oid);
					$.post("${pageContext.request.contextPath}/backStage/orderDetails.action",{"orders_id":orders_id},function(data){
						var s="<table width='99%' border='1'><tr><th>商品编号</th><th>商品名称</th><th>购买数量</th></tr>";
						$(data).each(function(){
							s+=("<tr><td>"+this.goods_id+"</td><td>"+this.goods_name+"</td><td>"+this.orderItem_count+"</td></tr>");
						});
						s+="</table>";
						
						layer.open({
							 type: 1,//0:信息框; 1:页面; 2:iframe层;	3:加载层;  4:tip层
						     title:"订单详情",//标题
						     area: ['450px', '300px'],//大小
						     shadeClose: true, //点击弹层外区域 遮罩关闭
						     content: s,//内容
						     offset: '100px'
						});
					},"json");
				}
		</script>
	</HEAD>
	<body>
		<form id="Form1" name="Form1" action="${pageContext.request.contextPath}/user/list.jsp" method="post">
			<table cellSpacing="1" cellPadding="0" width="100%" align="center" bgColor="#f5fafe" border="0">
				<TBODY>
					<tr>
						<td class="ta_01" align="center" bgColor="#afd1f3">
							<strong>订单列表</strong>
						</TD>
					</tr>
					
					<tr>
						<td class="ta_01" align="center" bgColor="#f5fafe">
							<table cellspacing="0" cellpadding="1" rules="all"
								bordercolor="gray" border="1" id="DataGrid1"
								style="BORDER-RIGHT: gray 1px solid; BORDER-TOP: gray 1px solid; BORDER-LEFT: gray 1px solid; WIDTH: 65%; WORD-BREAK: break-all; BORDER-BOTTOM: gray 1px solid; BORDER-COLLAPSE: collapse; BACKGROUND-COLOR: #f5fafe; WORD-WRAP: break-word">
								<tr
									style="FONT-WEIGHT: bold; FONT-SIZE: 12pt; HEIGHT: 25px; BACKGROUND-COLOR: #afd1f3">

									<td align="center" width="5%">
										序号
									</td>
									<td align="center" width="25%">
										订单编号
									</td>
									<td align="center" width="7%">
										订单金额
									</td>
									<td align="center" width="7%">
										订单状态
									</td>
									<td align="center" width="10%">
										用户账号
									</td>
									<td align="center" width="10%">
										用户联系方式
									</td>
									<td align="center" width="20%">
										用户收货地址
									</td>
								
									<!-- <td align="center" width="20%">
										订单详情
									</td> -->
								</tr>
									<c:forEach items="${orderList }" var="order" varStatus="vs">
										<tr onmouseover="this.style.backgroundColor = 'white'"
											onmouseout="this.style.backgroundColor = '#F5FAFE';">
											<td style="CURSOR: hand; HEIGHT: 40px" align="center"
												width="5%">
												${vs.count }
											</td>
											<td style="CURSOR: hand; HEIGHT: 40px" align="center"
												width="25%">
												${order.orders_id }
											</td>
											<td style="CURSOR: hand; HEIGHT: 40px" align="center"
												width="5%">
												${order.orders_total }元
											</td>
											<td style="CURSOR: hand; HEIGHT: 40px" align="center"
												width="5%">
												${order.orders_state }
											</td>
											<td style="CURSOR: hand; HEIGHT: 40px" align="center"
												width="10%">
												${order.user_code }
											</td>
											<td style="CURSOR: hand; HEIGHT: 40px" align="center"
												width="10%">
												${order.user_telephone }
											</td>
											<td style="CURSOR: hand; HEIGHT: 40px" align="center"
												width="10%">
												${order.user_address }
											</td>
											
											<!-- <td align="center" style="HEIGHT: 40px">
												<input style="height:28px;width:98px;text-align:center;background:none;" 
													type="button" value="查看详情"  onclick="showDetail('${order.orders_id}')"/>
											</td> -->
										</tr>
									</c:forEach>
							</table>
						</td>
					</tr>
					
				</TBODY>
			</table>
		</form>
	</body>
</HTML>

