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
<link href="${pageContext.request.contextPath }/assets/css/admin.css"
	rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath }/assets/css/amazeui.css"
	rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath }/basic/css/demo.css"
	rel="stylesheet" type="text/css" />
<link type="text/css"
	href="${pageContext.request.contextPath }/css/optstyle.css"
	rel="stylesheet" />
<link type="text/css"
	href="${pageContext.request.contextPath }/css/style.css"
	rel="stylesheet" />

<script type="text/javascript"
	src="${pageContext.request.contextPath }/basic/js/jquery-1.7.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/basic/js/quick_links.js"></script>

<script type="text/javascript"
	src="${pageContext.request.contextPath }/assets/js/amazeui.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/amaze_js/jquery.imagezoom.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/amaze_js/jquery.flexslider.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/amaze_js/list.js"></script>


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
			<li><a href="${pageContext.request.contextPath }/jsp/home.jsp">
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
	<b class="line"></b>
	<div class="listMain">

		<!--分类-->
		<div class="nav-table">
			<div class="long-title">
				<span class="all-goods"><a
					href="${pageContext.request.contextPath }/toHome.action">返回首页</a></span>
			</div>
			<div class="nav-cont">
				<ul>
					<li class="index"><a href="${pageContext.request.contextPath }/toMall.action">进入商城</a></li>
					<li class="qc"><a href="${pageContext.request.contextPath }/toSupply.action">供求中心</a></li>
					<li class="qc"><a href="${pageContext.request.contextPath }/toAgriculture.action">农资下乡</a></li>
					<li class="qc"><a href="${pageContext.request.contextPath }/toExpert.action">专家指导</a></li>
					<li class="qc last"><a href="#">经验交流</a></li>
				</ul>
			</div>
		</div>
		<script type="text/javascript">
			$(function() {});
			$(window).load(function() {
				$('.flexslider').flexslider({
					animation : "slide",
					start : function(slider) {
						$('body').removeClass('loading');
					}
				});
			});
		</script>
		<div class="scoll">
			<section class="slider">
			<div class="flexslider">
				<ul class="slides">
					<li><img
						src="${pageContext.request.contextPath }/images/index.jpg"
						title="pic" /></li>

				</ul>
			</div>
			</section>
		</div>

		<!--放大镜-->

		<div class="item-inform">
			<div class="clearfixLeft" id="clearcontent">

				<div class="box">
					<script type="text/javascript">
						$(document).ready(function() {
							$(".jqzoom").imagezoom();
							$("#thumblist li a").click(function() {
								$(this).parents("li").addClass("tb-selected").siblings().removeClass("tb-selected");
								$(".jqzoom").attr('src', $(this).find("img").attr("mid"));
								$(".jqzoom").attr('rel', $(this).find("img").attr("big"));
							});
						});
					</script>

					<div class="tb-booth tb-pic tb-s310">
						<img src="${pageContext.request.contextPath }/${goods.goods_images}" alt="加载异常" 
							rel="${pageContext.request.contextPath }/${goods.goods_images}" class="jqzoom" />
					</div>

				</div>

				<div class="clear"></div>
			</div>

			<div class="clearfixRight">

				<!--规格属性-->
				<!--名称-->
				<br>
				<br>
				<br>
				<br>
				<div class="tb-detail-hd">
					<h1>${goods.goods_name }</h1>
				</div>
				<br>
				<div class="tb-detail-list">
					<!--价格-->
					<div class="tb-detail-price">
						<li class="price iteminfo_price">
							<dt>现价</dt>
							<dd>
								<em>¥</em><b class="sys_item_price">${goods.goods_original_price }</b>
							</dd>
						</li>
						<li class="price iteminfo_mktprice">
							<dt>原价</dt>
							<dd>
								<em>¥</em><b class="sys_item_mktprice">${goods.goods_current_price }</b>
							</dd>
						</li>
						<div class="clear"></div>
					</div>

					<!--销量-->
					<ul class="tm-ind-panel">
						<li class="tm-ind-item tm-ind-sellCount canClick">
							<div class="tm-indcon">
								<span class="tm-label">累计销量</span><span class="tm-count">${goods.goods_sales_volume }</span>
							</div>
						</li>
						<li class="tm-ind-item tm-ind-sumCount canClick">
							
						</li>
						<li class="tm-ind-item tm-ind-reviewCount canClick tm-line3">
							
						</li>
					</ul>
					<div class="clear"></div>

					<!--各种规格-->
					<dl class="iteminfo_parameter sys_item_specpara">
						<dt class="theme-login">
							<div class="cart-title">
								可选规格<span class="am-icon-angle-right"></span>
							</div>
						</dt>
						<dd>
							<!--操作页面-->

							<div class="theme-popover-mask"></div>

							<div class="theme-popover">
								<div class="theme-span"></div>
								<div class="theme-poptit">
									<a href="javascript:;" title="关闭" class="close">×</a>
								</div>
								<div class="theme-popbod dform">
								
									<form class="theme-signin" action="<%=basePath %>cart/add.action?goods_id=${goods.goods_id}" target="_blank" method="post" id="formId">
										<div class="theme-signin-left">

											<div class="theme-options">
												<span class="stock">购买数量：</span>	
												<input id="text_box" name="orderItem_count" type="text" value="1" style="width:122px;height:28px;" />
											</div>
											<div class="clear"></div>

											<div class="pay">
												<li>
													<div>
														<a href="javascript:" onclick="addCar()">
															<input style="height:32px;width:98px;text-align:center;background:none;" type="button" value="立即购买">
														</a>
													</div>
												</li>
												<li>
													<div>
														<a href="javascript:void(0)" onclick="addCar()">
															<input style="height:32px;width:98px;text-align:center;background:none;" type="button" value="加入购物车">
														</a>
													</div>
												</li>
											</div>
											
										</div>
									</form>
									
								</div>
							</div>

						</dd>
					</dl>
					<div class="clear"></div>
					<!--活动	-->
					<div class="shopPromotion gold">
						<div class="hot">
							<dt class="tb-metatit">优惠</dt>
							<div class="gold-list">
								<p>购物满2件打8折，满3件7折</p>
							</div>
						</div>
					</div>
				</div>

				<br>
				

			</div>

			<div class="clear"></div>

		</div>

	</div>

</body>

<script type="text/javascript">
	function addCar(){
		document.getElementById("formId").submit();
	}
</script>

</html>
