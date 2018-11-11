<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="itcast" uri="http://itcast.cn/common/"%>
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
			<li><a href="${pageContext.request.contextPath }/jsp/index.jsp">
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

			<div class="nav-cont">
				<ul>
					<li class="all-goods"><a
						href="${pageContext.request.contextPath }/toHome.action">返回首页</a></li>
					<li class="all-goods"><a
						href="${pageContext.request.contextPath }/toMall.action">进入商城</a></li>
					<li class="qc"><a
						href="${pageContext.request.contextPath }/toSupply.action">供求中心</a></li>
					<li class="qc"><a
						href="${pageContext.request.contextPath }/toAgriculture.action">农资下乡</a></li>
					<li class="qc"><a href="${pageContext.request.contextPath }/toExpert.action">专家指导</a></li>
					<li class="qc last"><a href="#">经验交流</a></li>
				</ul>
			</div>
		</div>
		<div class="clear"></div>
		<br>
		<div class="concent">
			<!--地址 -->
			<div class="paycont">

				<!--订单 -->
				<div class="concent">
					<div id="payTable">
						<div class="cart-table-th">
							<div class="wp">

								<div class="th th-item">
									<div class="td-inner">供应信息</div>
								</div>
								<div class="th th-price">
									<div class="td-inner">联系方式</div>
								</div>
								<div class="th th-amount">
									<div class="td-inner">可供应数量</div>
								</div>
								<div class="th th-sum">
									<div class="td-inner">分类</div>
								</div>
								<div class="th th-oplist">
									<div class="td-inner">有效日期</div>
								</div>


							</div>
						</div>
						<div class="clear"></div>
						
						<c:forEach items="${page.rows }" var="row">
						<tr class="item-list">
							<div class="bundle  bundle-last">

								<div class="bundle-main">
									<ul class="item-content clearfix">
										<div class="pay-phone">
											<li class="td td-item">
												<div class="item-pic">
													<a
														href="${pageContext.request.contextPath }/goods.action?goods_id=${row.goods_id}"
														class="J_MakePoint"> <img
														src="${pageContext.request.contextPath }/${row.sup_images }"
														class="itempic J_ItemImg"></a>
												</div>
												<div class="item-info">
													<div class="item-basic-info">
														<a
															href="${pageContext.request.contextPath }/goods.action?goods_id=${row.goods_id}"
															class="item-title J_MakePoint" data-point="tbcart.8.11">${row.sup_name }</a>
														<br>
														<div class="pay-logis">地区：${row.sup_address }</div>
														<div class="pay-logis">说明：${row.sup_explain }</div>
													</div>
												</div>
											</li>
											<li class="td td-price">
												<div class="item-price price-promo-promo">
													<div class="price-content">
														<em class="J_Price price-now">${row.sup_telephone }</em> <br> <em
															class="J_Price price-now">${row.sup_user }</em>
													</div>
												</div>
											</li>
										</div>
										<li class="td td-amount">
											<div class="amount-wrapper ">
												<div class="item-amount ">
													<span class="phone-title">数量</span>
													<div class="pay-logis">${row.sup_number }</div>
												</div>
											</div>
										</li>
										<li class="td td-sum">
											<div class="td-inner">
												<em tabindex="0" class="J_ItemSum number">${row.sup_type }</em>
											</div>
										</li>
										<li class="td td-oplist">
											<div class="td-inner">
												<span class="phone-title">日期</span>
												<div class="pay-logis">${row.sup_expiry_date }</div>
											</div>
										</li>

									</ul>
								</div>
								<div class="clear"></div>

							</div>
						</tr>
						</c:forEach>
					</div>
				</div>
				
			<div style=text-align:center;>
			  <ul data-am-widget="pagination" class="am-pagination am-pagination-default">
			
			      <li class="am-pagination-first ">
			        <a href="<%=basePath %>toSupply.action?page=${1 }" class="">第一页</a>
			      </li>
			
			      <li class="am-pagination-prev ">
			        <a href="#" class="">上一页</a>
			      </li>
			
			            <li class="am-active">
			              <a href="#" class="am-active">1</a>
			            </li>
			            <li class="">
			              <a href="<%=basePath %>toSupply.action?page=${2 }" class="">2</a>
			            </li>
			            <li class="">
			              <a href="<%=basePath %>toSupply.action?page=${3 }" class="">3</a>
			            </li>
			            <li class="">
			              <a href="<%=basePath %>toSupply.action?page=${4 }" class="">4</a>
			            </li>
			            <li class="">
			              <a href="<%=basePath %>toSupply.action?page=${5 }" class="">5</a>
			            </li>
					
			      <li class="am-pagination-next ">
			        <a href="#" class="">下一页</a>
			      </li>
			
			      <li class="am-pagination-last ">
			        <a href="#" class="">最末页</a>
			      </li>
			  </ul>
			</div>

			</div>

			<div class="clear"></div>


			<div class="footer ">
				<div class="footer-hd ">
					<p>
						<a href="# ">商城首页</a> <b>|</b> <a href="# "></a> <b>|</b> <a
							href="# "></a>
					</p>
				</div>
				<div class="footer-bd ">
					<p>
						<a href="# ">汉中特色农业综合服务平台</a> <a href="# ">&nbsp;联系我们</a> | <a
							href="# ">关于我们</a>
					</p>
				</div>
			</div>

		</div>

	</div>

</body>
</html>
