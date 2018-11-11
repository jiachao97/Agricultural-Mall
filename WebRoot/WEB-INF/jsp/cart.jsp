<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>汉中特色农业综合服务平台</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link href="${pageContext.request.contextPath }/assets/css/amazeui.css"
	rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath }/basic/css/demo.css"
	rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath }/css/cartstyle.css"
	rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath }/css/optstyle.css"
	rel="stylesheet" type="text/css" />

<script type="text/javascript"
	src="${pageContext.request.contextPath }/amaze_js/jquery.js"></script>

</head>

<body>

	<!--顶部导航条 -->
	<div class="am-container header">
		<ul class="message-r">

			<div class="topMessage">
				<div class="menu-hd">
					<c:if test="${empty user }">
						<a href="${pageContext.request.contextPath }/user/toLogin.action"
							target="_top" class="h"><i class="am-icon-user am-icon-fw"></i>登录</a> 
							&nbsp;&nbsp;
							<a href="${pageContext.request.contextPath }/user/toRegister.action"
							target="_top"><i class="am-icon-hand-o-right am-icon-fw"></i>免费注册</a>
					</c:if>
					<c:if test="${not empty user }">
							欢迎访问，${user.user_name }
							&nbsp;&nbsp;
							<a href="${pageContext.request.contextPath }/user/logout.action"
							target="_top" class="h"><i class="am-icon-user am-icon-fw"></i>退出</a>
					</c:if>
				</div>
			</div>

		</ul>
	</div>

	<!--悬浮搜索框-->

	<div class="nav white">
		<div class="logoBig">
			<li><a href="${pageContext.request.contextPath }/toHome.action">
					<img src="${pageContext.request.contextPath }/images/logo.jpg" />
			</a></li>
		</div>

		<div class="search-bar pr">
			<a name="index_none_header_sysc" href="#"></a>
			<form action=#>
				<input id="searchInput" name="index_none_header_sysc" type="text"
					placeholder="搜索" autocomplete="off"> <input
					id="ai-topsearch" class="submit am-btn" value="搜索" index="1"
					type="submit">
			</form>
		</div>
	</div>

	<div class="clear"></div>

	<!--购物车 -->
	<div class="concent">
		<div id="cartTable">
			<div class="cart-table-th">
				<div class="wp">
					<div class="th th-chk">
						<div id="J_SelectAll1" class="select-all J_SelectAll"></div>
					</div>
					<div class="th th-item">
						<div class="td-inner">商品信息</div>
					</div>
					<div class="th th-price">
						<div class="td-inner">单价</div>
					</div>
					<div class="th th-amount">
						<div class="td-inner">数量</div>
					</div>
					<div class="th th-sum">
						<div class="td-inner">金额</div>
					</div>
					<div class="th th-op">
						<div class="td-inner">操作</div>
					</div>
				</div>
			</div>
			<div class="clear"></div>
			
			<c:forEach items="${cart.items }" var="item">
				<tr class="item-list">
					<div class="bundle  bundle-last ">
						<div class="bundle-hd">
							<div class="bd-promos">
								<div class="bd-has-promo">
									立即支付
								</div>
								
								<span class="list-change theme-login">编辑</span>
							</div>
						</div>
						<div class="clear"></div>
						<div class="bundle-main">
						
							<ul class="item-content clearfix">
								
								<li class="td td-item">
									<div class="item-pic">
										<a href="${pageContext.request.contextPath }/goods.action?goods_id=${item.goods.goods_id }" target="_blank"
											title="点击pname跳转至商品详情页面 "
											class="J_MakePoint" data-point="tbcart.8.12"> 
											<img src="${pageContext.request.contextPath }/${item.goods.goods_images}" class="itempic J_ItemImg">
										</a>
									</div>
									<div class="item-info">
										<div class="item-basic-info" style="text-align:center;margin-top:45px;">
											<a href="${pageContext.request.contextPath }/goods.action?goods_id=${item.goods.goods_id }" target="_blank" 
												title="点击pimage跳转至商品详情页面"
												class="item-title J_MakePoint" data-point="tbcart.8.11">${item.goods.goods_name }</a>
										</div>
									</div>
								</li>
								<li class="td td-info">
									<div class="item-props item-props-can"></div>
								</li>
								<li class="td td-price">
									<div class="item-price price-promo-promo">
										<div class="price-content" style="text-align:center;margin-top:16px;">
											<div class="price-line">
												<em class="price-original">${item.goods.goods_original_price }</em>
											</div>
											<div class="price-line">
												<em class="J_Price price-now" tabindex="0">${item.goods.goods_current_price }</em>
											</div>
										</div>
									</div>
								</li>
								<li class="td td-amount">
									<div class="amount-wrapper " style="text-align:center;margin-top:16px;">
										<div class="item-amount ">
											<div class="sl">
												
												<input class="text_box" name="" type="text" value="${item.orderItem_count }" style="width:80px;height:25px;" readonly="readonly" /> 
												
											</div>
										</div>
									</div>
								</li>
								<li class="td td-sum">
									<div class="td-inner" style="text-align:center;margin-top:16px;">
										<em tabindex="0" class="J_ItemSum number">${item.orderItem_subtotal }元</em>
									</div>
								</li>
								<li class="td td-op">
									<div class="td-inner" style="text-align:center;margin-top:16px;">
										<a href="javascript:void(0);" data-point-url="#" class="delete" onclick="remove('${item.goods.goods_id}')"> 删除</a>
									</div>
								</li>
							</ul>
	
						</div>
					</div>
				</tr>
			</c:forEach>
			
			<div class="clear"></div>

		</div>
		<div class="clear"></div>

		<div class="float-bar-wrapper">
			
			<div class="float-bar-right">
				
				<div class="price-sum">
					<span class="txt">合计：</span> <strong class="price">¥&nbsp;<em
						id="J_Total">${cart.orders_total }元</em></strong>
				</div>
				<div class="btn-area">
					<a href="${pageContext.request.contextPath }/orders/add.action" id="J_Go" class="submit-btn submit-btn-disabled"
						aria-label="结算"> <span>结&nbsp;算</span></a>
				</div>
			</div>

		</div>

	</div>

	
</body>

<script type="text/javascript">
	function remove(goods_id){
		if(confirm("您确认从购物车中移除该商品吗?")){
			location.href="${pageContext.request.contextPath }/cart/remove.action?goods_id="+goods_id;
		}
	}
</script>

</html>
