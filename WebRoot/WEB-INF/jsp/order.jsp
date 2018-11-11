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

<link href="${pageContext.request.contextPath }/css/jsstyle.css"
	rel="stylesheet" type="text/css" />

<script type="text/javascript"
	src="${pageContext.request.contextPath }/amaze_js/address.js"></script>

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
						<a id="mc-menu-hd"
							href="${pageContext.request.contextPath }/toCart.action"
							target="_top"> <i class="am-icon-shopping-cart  am-icon-fw"></i><span>购物车</span>
							<strong id="J_MiniCartNum" class="h"></strong>
						</a>
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
			<form action="#">
				<input id="searchInput" name="index_none_header_sysc" type="text"
					placeholder="搜索" autocomplete="off"> <input
					id="ai-topsearch" class="submit am-btn" value="搜索" index="1"
					type="submit">
			</form>
		</div>
	</div>

	<div class="clear"></div>



	<div class="concent">
		<!--地址 -->
		<div class="paycont">
			<div class="address">
				<h3>确认收货地址</h3>
				<div class="clear"></div>
				<ul>
					<div class="per-border"></div>
					<li class="user-addresslist defaultAddr">

						<div class="address-left">
							<div class="user DefaultAddr">

								<span class="buy-address-detail"> <span class="buy-user">用户名：${orders.user.user_name }</span>
									<br> <span class="buy-phone">联系方式：${orders.user.user_telephone }</span>
								</span>
							</div>
							<div class="default-address DefaultAddr">
								<span class="buy-line-title buy-line-title-type">收货地址：${orders.user.user_address }
								</span> </span>
							</div>
							<ins class="deftip">默认地址</ins>
						</div>
						<div class="address-right">
							<a href="../person/address.html"> <span
								class="am-icon-angle-right am-icon-lg"></span></a>
						</div>
						<div class="clear"></div>

						<div class="new-addr-btn">
							<a href="#" class="hidden">设为默认</a> <span
								class="new-addr-bar hidden">|</span> <a href="#">修改</a>
						</div>

					</li>
				</ul>
				<div class="clear"></div>
			</div>

			<!--订单 -->
			<div class="concent">
				<div id="payTable">
					<h3>确认订单信息</h3>
					<div class="cart-table-th">
						<div class="wp">

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
							<div class="th th-oplist">
								<div class="td-inner">配送方式</div>
							</div>

						</div>
					</div>
					<div class="clear"></div>

					<c:forEach items="${orders.items }" var="orders">
						<tr class="item-list">
							<div class="bundle  bundle-last">

								<div class="bundle-main">
									<ul class="item-content clearfix">
										<div class="pay-phone">
											<li class="td td-item">
												<div class="item-pic">
													<a href="${pageContext.request.contextPath }/goods.action?goods_id=${orders.goods.goods_id}" 
													target="_blank" class="J_MakePoint"> 
													<img src="${pageContext.request.contextPath }/${orders.goods.goods_images}"
														class="itempic J_ItemImg"></a>
												</div>
												<div class="item-info"
													style="text-align:center;margin-top:45px;">
													<div class="item-basic-info">
														<a
															href="${pageContext.request.contextPath }/goods.action?goods_id=${orders.goods.goods_id}"
															target="_blank" class="item-title J_MakePoint"
															data-point="tbcart.8.11">${orders.goods.goods_name } </a>
													</div>
												</div>
											</li>
											<li class="td td-price">
												<div class="item-price price-promo-promo">
													<div class="price-content"
														style="text-align:center;margin-top:20px;">
														<div class="price-line">
															<em class="price-original">${orders.goods.goods_original_price }</em>
														</div>
														<div class="price-line">
															<em class="J_Price price-now" tabindex="0">${orders.goods.goods_current_price }</em>
														</div>
													</div>
												</div>
											</li>
										</div>
										<li class="td td-amount">
											<div class="amount-wrapper "
												style="text-align:center;margin-top:25px;">
												<div class="item-amount ">
													<span class="phone-title">购买数量</span>
													<div class="sl">

														<input class="text_box" name="" type="text"
															value="${orders.orderItem_count }" style="width:80px;height:25px;"
															readonly="readonly" />

													</div>
												</div>
											</div>
										</li>
										<li class="td td-sum">
											<div class="td-inner"
												style="text-align:center;margin-top:20px;">
												<em tabindex="0" class="J_ItemSum number">${orders.orderItem_subtotal }元</em>
											</div>
										</li>
										<li class="td td-oplist">
											<div class="td-inner"
												style="text-align:center;margin-top:19px;">
												<span class="phone-title">配送方式</span>
												<div class="pay-logis">包邮</div>
											</div>
										</li>

									</ul>
								</div>
								<div class="clear"></div>

							</div>
						</tr>
					</c:forEach>

					<div class="clear"></div>
				</div>

			</div>
			<div class="clear"></div>
			<div class="pay-total">
				<!--留言-->
				<div class="order-extra">
					<div class="order-user-info">
						<div id="holyshit257" class="memo">
							<label>买家留言：</label> <input type="text" placeholder="留言"
								class="memo-input J_MakePoint c2c-text-default memo-close">
							<div class="msg hidden J-msg">
								<p class="error">最多输入500个字符</p>
							</div>
						</div>
					</div>

				</div>



			</div>

		</div>

		<!--付款 -->
		<div class="order-go clearfix">
			<div class="pay-confirm clearfix">
				<div class="box">
					<div tabindex="0" id="holyshit267" class="realPay">
						<em class="t">付款：</em> <span class="price g_price "> <span>¥</span>
							<em class="style-large-bold-red " id="J_ActualFee">${orders.orders_total }元</em>
						</span>
					</div>

					<div id="holyshit268" class="pay-address">

						<p class="buy-footer-address">
							<span class="buy-line-title buy-line-title-type">收货地址：</span>${orders.user.user_address }

						</p>
						<p class="buy-footer-address">
							<span class="buy-line-title">收货人：</span> <span
								class="buy-address-detail"> <span class="buy-user">${orders.user.user_name }
							</span> <span class="buy-phone">${orders.user.user_telephone }</span>
							</span>
						</p>
					</div>
				</div>

				<div id="holyshit269" class="submitOrder">
					<div class="go-btn-wrap">
						<a id="J_Go" class="btn-go" tabindex="0" title="立即支付">立即支付</a>
					</div>
				</div>
				<div class="clear"></div>
			</div>
		</div>
	</div>

	<div class="clear"></div>

</body>
</html>
