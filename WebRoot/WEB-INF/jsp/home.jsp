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
<meta name="keywords" content="no-cache" />
<meta name="description" content="no-cache" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/amazeui/list.css" />

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport"
	content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no" />
<meta name="renderer" content="webkit" />
<meta http-equiv="Cache-Control" content="no-siteapp" />
<meta name="apple-mobile-web-app-title" content="Amaze UI" />
<meta name="apple-mobile-web-app-capable" content="yes" />
<meta name="apple-mobile-web-app-status-bar-style" content="black" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/amazeui/amazeui.min.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/amazeui/amaze.min.css" />
<script src="${pageContext.request.contextPath }/amazeui/zepto.min.js"></script>
<script src="${pageContext.request.contextPath }/amazeui/amazeui.min.js"></script>

<link href="${pageContext.request.contextPath }/assets/css/admin.css"
	rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath }/basic/css/demo.css"
	rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath }/css/hmstyle.css"
	rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath }/css/skin.css"
	rel="stylesheet" type="text/css" />

<script
	src="${pageContext.request.contextPath }/assets/js/jquery.min.js"></script>
<script
	src="${pageContext.request.contextPath }/assets/js/amazeui.min.js"></script>

</head>

<body>

	<div class="hmtop">
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
				<li><img
					src="${pageContext.request.contextPath }/images/logo.jpg" /></li>
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
	</div>

	<div class="banner">
		<!--轮播 -->
		<div class="am-slider am-slider-default scoll" data-am-flexslider
			id="demo-slider-0">
			<ul class="am-slides">
				<li class="banner1"><a><img
						src="${pageContext.request.contextPath }/images/ad1.jpg" /></a></li>
				<li class="banner2"><a><img
						src="${pageContext.request.contextPath }/images/ad2.jpg" /></a></li>
				<li class="banner3"><a><img
						src="${pageContext.request.contextPath }/images/ad3.jpg" /></a></li>
				<li class="banner4"><a><img
						src="${pageContext.request.contextPath }/images/ad1.jpg" /></a></li>

			</ul>
		</div>
		<div class="clear"></div>
	</div>
	<div class="shopNav">
		<div class="slideall">

			<div class="long-title">
				<span class="all-goods">汉中特色推荐</span>
			</div>
			<div class="nav-cont">
				<ul>
					<li class="index"><a
						href="${pageContext.request.contextPath }/toMall.action">进入商城</a></li>
					<li class="qc"><a
						href="${pageContext.request.contextPath }/toSupply.action">供求中心</a></li>
					<li class="qc"><a href="${pageContext.request.contextPath }/toAgriculture.action">农资下乡</a></li>
					<li class="qc"><a href="${pageContext.request.contextPath }/toExpert.action">专家指导</a></li>
					<li class="qc last"><a href="#">经验交流</a></li>
				</ul>

			</div>

			<!--侧边导航 -->
			<div id="nav" class="navfull">
				<div class="area clearfix">
					<div class="category-content" id="guide_2">

						<div class="category">
							<ul class="category-list" id="js_climit_li">
								<li class="appliance js_toggle relative first">
									<div class="category-info">
										<h3 class="category-name b-category-name">
											<i><img
												src="${pageContext.request.contextPath }/images/index.png"></i><a
												class="ml-22" title="花茶、果茶">汉中仙毫</a>
										</h3>
										<em>&gt;</em>
									</div>
									<div class="menu-item menu-in top">
										<div class="area-in">
											<div class="area-bg">
												<div class="menu-srot">
													<div class="sort-side">
														<dl class="dl-sort">
															<dt>
																<span title="简介">简介</span>
															</dt>
															<dd>
																<img alt=""
																	src="${pageContext.request.contextPath }/images/chaye.jpg">
															</dd>

														</dl>
														<dl class="dl-sort">
															<dt>
																<span title="汉中仙毫">汉中仙毫：</span>
															</dt>
															<dd>
																<h4>
																	<span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;汉中仙毫，是陕南绿茶的主产区，素有“秦巴云雾中的仙芽”的美称。</span>
																</h4>
															</dd>
															<dd>
																<h4>
																	<span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;其外形微扁挺秀匀齐、嫩绿显毫、香气高锐持久、汤色嫩绿清澈鲜明、滋味鲜爽回甘、叶底匀气鲜活、嫩绿明亮。冲泡后，一部分仙毫在水面上竖立着，另一部分在杯子底部竖立着，仙毫嫩芽非常细嫩，特别漂亮。
																	</span>
																</h4>
															</dd>
															<dd>
																<a
																	class="am-btn-success am-round am-icon-arrow-right btn"
																	href="#" target="_blank">&nbsp;种茶之道</a>
															</dd>
														</dl>
													</div>
													
													
														<div class="brand-side">
															<dl class="dl-sort">
																<dt>
																	<span>立即订购</span>
																</dt>
																<dd>
																	<a title="散装购买" target="_blank"
																		href="${pageContext.request.contextPath }/goods.action?goods_id=2"
																		rel="nofollow"><span>散装购买</span></a>
																</dd>
																<dd>
																	<a title="批发零售" target="_blank"
																		href="${pageContext.request.contextPath }/goods.action?goods_id=2"
																		rel="nofollow"><span class="red">批发零售&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
																			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
																			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></a>
																</dd>
															</dl>
														</div>
													
													
													<div class="brand-side">
														<dl class="dl-sort">
															<dt>
																<span>推荐茶园</span>
															</dt>
															<dd>
																<a title="西乡茶园" target="_blank" href="#" rel="nofollow"><span>西乡茶园</span></a>
															</dd>
															<dd>
																<a title="宁强千山茶园" target="_blank" href="#"
																	rel="nofollow"><span class="red">宁强千山茶园</span></a>
															</dd>
															<dd>
																<a title="山花茶园" target="_blank" href="#" rel="nofollow"><span
																	class="red">山花茶园</span></a>
															</dd>
														</dl>
													</div>
												</div>
											</div>
										</div>
									</div> <b class="arrow"></b>
								</li>

								<li class="appliance js_toggle relative">
									<div class="category-info">
										<h3 class="category-name b-category-name">
											<i><img
												src="${pageContext.request.contextPath }/images/index.png"></i><a
												class="ml-22" title="花茶、果茶">留坝蜂蜜</a>
										</h3>
										<em>&gt;</em>
									</div>
									<div class="menu-item menu-in top">
										<div class="area-in">
											<div class="area-bg">
												<div class="menu-srot">
													<div class="sort-side">
														<dl class="dl-sort">
															<dt>
																<span title="简介">简介</span>
															</dt>
															<dd>
																<img alt=""
																	src="${pageContext.request.contextPath }/images/fengmi.jpg">
															</dd>

														</dl>
														<dl class="dl-sort">
															<dt>
																<span title="留坝土蜂蜜：">留坝土蜂蜜：</span>
															</dt>
															<dd>
																<h4>
																	<span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;留坝土蜂蜜，留坝蜂蜜夏季如凝脂，春秋有结晶；颜色金黄或琥珀色；用筷挑起有回圆珠，质地如沙，不易扯丝；入口绵软细腻，芳香悠长浓郁。属营养保健、医药食品中之珍品，是汉中一大有名的地方特产。</span>
																</h4>
															</dd>
															<dd>
																<h4>
																	<span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;留坝县地处亚热带和暖温带气候的天然分界线，植被丰富，蜜源广泛，十分适宜蜜蜂养殖。2010年，全县中蜂饲养量达到2.97万箱，蜂蜜总产量达到326吨。</span>
																</h4>
															</dd>
															<dd>
																<a
																	class="am-btn-success am-round am-icon-arrow-right btn"
																	href="#">&nbsp;养蜂之道</a>
															</dd>
														</dl>
													</div>
													<div class="brand-side">
														<dl class="dl-sort">
															<dt>
																<span>立即订购</span>
															</dt>
															<dd>
																<a title="散装购买" target="_blank" href="${pageContext.request.contextPath }/goods.action?goods_id=3" rel="nofollow"><span>散装购买</span></a>
															</dd>
															<dd>
																<a title="批发零售" target="_blank" href="${pageContext.request.contextPath }/goods.action?goods_id=3" rel="nofollow"><span
																	class="red">批发零售</span></a>
															</dd>
														</dl>
													</div>
												</div>
											</div>
										</div>
									</div> <b class="arrow"></b>
								</li>

								<li class="appliance js_toggle relative">
									<div class="category-info">
										<h3 class="category-name b-category-name">
											<i><img
												src="${pageContext.request.contextPath }/images/index.png"></i><a
												class="ml-22" title="西乡樱桃">西乡樱桃</a>
										</h3>
										<em>&gt;</em>
									</div>
									<div class="menu-item menu-in top">
										<div class="area-in">
											<div class="area-bg">
												<div class="menu-srot">
													<div class="sort-side">
														<dl class="dl-sort">
															<dt>
																<span title="简介">简介</span>
															</dt>
															<dd>
																<img alt=""
																	src="${pageContext.request.contextPath }/images/yingtao.jpg">
															</dd>

														</dl>
														<dl class="dl-sort">
															<dt>
																<span title="西乡樱桃">西乡樱桃：</span>
															</dt>
															<dd>
																<h4>
																	<span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;西乡樱桃，是中国陕西汉中西乡县的特色水果，也是中国北方地区上市最早的水果之一。</span>
																</h4>
															</dd>
															<dd>
																<h4>
																	<span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;西乡樱桃以其个大、肉厚、皮薄、色红而著称。西乡县樱桃种植面积已达8000余亩，年产鲜果80万公斤，是全国著名的三大樱桃产地之一，是西乡县重要的地方特色产业，西乡县樱桃沟是我省著名的观光旅游风景区。</span>
																</h4>
															</dd>
															<dd>
																<h4>
																	<span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;入春时节这里似雪的樱花漫山遍野，景色壮观，樱桃成熟时节，挂满枝头的果实如鲜艳的玛瑙晶莹剔透，香甜诱人。</span>
																</h4>
															</dd>
														</dl>
													</div>
													<div class="brand-side">
														<dl class="dl-sort">
															<dt>
																<span>立即订购</span>
															</dt>
															<dd>
																<a title="散装购买" target="_blank" href="${pageContext.request.contextPath }/goods.action?goods_id=4" rel="nofollow"><span>散装购买</span></a>
															</dd>
															<dd>
																<a title="批发零售" target="_blank" href="${pageContext.request.contextPath }/goods.action?goods_id=4" rel="nofollow"><span
																	class="red">批发零售</span></a>
															</dd>
														</dl>
													</div>
												</div>
											</div>
										</div>
									</div> <b class="arrow"></b>
								</li>

								<li class="appliance js_toggle relative">
									<div class="category-info">
										<h3 class="category-name b-category-name">
											<i><img
												src="${pageContext.request.contextPath }/images/index.png"></i><a
												class="ml-22" title="城固蜜桔">城固蜜桔</a>
										</h3>
										<em>&gt;</em>
									</div>
									<div class="menu-item menu-in top">
										<div class="area-in">
											<div class="area-bg">
												<div class="menu-srot">
													<div class="sort-side">
														<dl class="dl-sort">
															<dt>
																<span title="简介">简介</span>
															</dt>
															<dd>
																<img alt=""
																	src="${pageContext.request.contextPath }/images/juzi.jpg">
															</dd>

														</dl>
														<dl class="dl-sort">
															<dt>
																<span title="城固蜜桔">城固蜜桔：</span>
															</dt>
															<dd>
																<h4>
																	<span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;城固柑橘甜中带酸，风味独特，品质优良，深受以西北为主的北方消费者青睐。</span>
																</h4>
															</dd>
															<dd>
																<h4>
																	<span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;城固因其特殊的地理位置，使柑橘的花期没有高温干热风危害，坐果率高；并且秋季降温早，温差大，有利于果实着色、成熟，这里的柑橘果面艳丽，果实可溶性固形物含量高、酸甜适度。</span>
																</h4>
															</dd>
															<dd>
																<h4>
																	<span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;如今，城固县柑橘种植达25万亩，年产量30万吨，产值达数亿元。</span>
																</h4>
															</dd>
														</dl>
													</div>
													<div class="brand-side">
														<dl class="dl-sort">
															<dt>
																<span>立即订购</span>
															</dt>
															<dd>
																<a title="散装购买" target="_blank" href="${pageContext.request.contextPath }/goods.action?goods_id=5" rel="nofollow"><span>散装购买</span></a>
															</dd>
															<dd>
																<a title="批发零售" target="_blank" href="${pageContext.request.contextPath }/goods.action?goods_id=5" rel="nofollow"><span
																	class="red">批发零售</span></a>
															</dd>
														</dl>
													</div>
												</div>
											</div>
										</div>
									</div> <b class="arrow"></b>
								</li>

								<li class="appliance js_toggle relative">
									<div class="category-info">
										<h3 class="category-name b-category-name">
											<i><img
												src="${pageContext.request.contextPath }/images/index.png"></i><a
												class="ml-22" title="洋县黑米">洋县黑米</a>
										</h3>
										<em>&gt;</em>
									</div>
									<div class="menu-item menu-in top">
										<div class="area-in">
											<div class="area-bg">
												<div class="menu-srot">
													<div class="sort-side">
														<dl class="dl-sort">
															<dt>
																<span title="简介">简介</span>
															</dt>
															<dd>
																<img alt=""
																	src="${pageContext.request.contextPath }/images/heimi.jpg">
															</dd>

														</dl>
														<dl class="dl-sort">
															<dt>
																<span title="洋县黑米">洋县黑米：</span>
															</dt>
															<dd>
																<h4>
																	<span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;洋县黑米色泽乌黑，内质色白，煮成粥为深棕色，味道浓香，营养价值甚高。</span>
																</h4>
															</dd>
															<dd>
																<h4>
																	<span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;常食洋县黑米，具有滋阴补肾、益气强身、明目活血的作用。若用洋县黑米与陕北红枣煮粥，更是味美甜香，被人们称之为“黑红双绝”。</span>
																</h4>
															</dd>
															<dd>
																<h4>
																	<span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;用洋县黑米配以白果、银耳、核桃仁、花生米、红枣、冰糖、苡米做成“黑米八宝粥”，是难得的高级滋补美食。如能长期服用，可以益寿延年。</span>
																</h4>
															</dd>
														</dl>
													</div>
													<div class="brand-side">
														<dl class="dl-sort">
															<dt>
																<span>立即订购</span>
															</dt>
															<dd>
																<a title="散装购买" target="_blank" href="${pageContext.request.contextPath }/goods.action?goods_id=6" rel="nofollow"><span>散装购买</span></a>
															</dd>
															<dd>
																<a title="批发零售" target="_blank" href="${pageContext.request.contextPath }/goods.action?goods_id=6" rel="nofollow"><span
																	class="red">批发零售</span></a>
															</dd>
														</dl>
													</div>
												</div>
											</div>
										</div>
									</div> <b class="arrow"></b>
								</li>

								<li class="appliance js_toggle relative">
									<div class="category-info">
										<h3 class="category-name b-category-name">
											<i><img
												src="${pageContext.request.contextPath }/images/index.png"></i><a
												class="ml-22" title="镇巴腊肉">镇巴腊肉</a>
										</h3>
										<em>&gt;</em>
									</div>
									<div class="menu-item menu-in top">
										<div class="area-in">
											<div class="area-bg">
												<div class="menu-srot">
													<div class="sort-side">
														<dl class="dl-sort">
															<dt>
																<span title="简介">简介</span>
															</dt>
															<dd>
																<img alt=""
																	src="${pageContext.request.contextPath }/images/larou.jpg">
															</dd>

														</dl>
														<dl class="dl-sort">
															<dt>
																<span title="镇巴腊肉">镇巴腊肉：</span>
															</dt>
															<dd>
																<h4>
																	<span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;腊肉，又叫熏肉，是陕南秦巴山区一带的地产特产。而镇巴县的腊肉更是其中的精品。</span>
																</h4>
															</dd>
															<dd>
																<h4>
																	<span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;镇巴腊肉利用自然风吹干其水份，肉色鲜艳，香味醇正，不哈喉，无烟熏味，在加工过程中保持了原汁水份，食用时无粗糙感，不上火。</span>
																</h4>
															</dd>
															<dd>
																<h4>
																	<span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;“镇巴腊肉”之所以名扬陕南，其独特的腌制工序、选料考究、保存方式、烹饪技术等造就了今天的镇巴腊肉。</span>
																</h4>
															</dd>
															<dd>
																<a
																	class="am-btn-success am-round am-icon-arrow-right btn"
																	href="#">&nbsp;美食做法</a>
															</dd>
														</dl>
													</div>
													<div class="brand-side">
														<dl class="dl-sort">
															<dt>
																<span>立即订购</span>
															</dt>
															<dd>
																<a title="散装购买" target="_blank" href="${pageContext.request.contextPath }/goods.action?goods_id=7" rel="nofollow"><span>散装购买</span></a>
															</dd>
															<dd>
																<a title="批发零售" target="_blank" href="${pageContext.request.contextPath }/goods.action?goods_id=7" rel="nofollow"><span
																	class="red">批发零售</span></a>
															</dd>
														</dl>
													</div>
												</div>
											</div>
										</div>
									</div> <b class="arrow"></b>
								</li>

								<li class="appliance js_toggle relative">
									<div class="category-info">
										<h3 class="category-name b-category-name">
											<i><img
												src="${pageContext.request.contextPath }/images/index.png"></i><a
												class="ml-22" title="汉中附子">汉中附子</a>
										</h3>
										<em>&gt;</em>
									</div>
									<div class="menu-item menu-in top">
										<div class="area-in">
											<div class="area-bg">
												<div class="menu-srot">
													<div class="sort-side">
														<dl class="dl-sort">
															<dt>
																<span title="简介">简介</span>
															</dt>
															<dd>
																<img alt=""
																	src="${pageContext.request.contextPath }/images/fuzi.jpg">
															</dd>

														</dl>
														<dl class="dl-sort">
															<dt>
																<span title="汉中附子">汉中附子：</span>
															</dt>
															<dd>
																<h4>
																	<span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;汉中市是中国传统的特色和优势中药材——附子的原产地、主产地，被历代中药界内人士称之为“中国附子之乡”。</span>
																</h4>
															</dd>
															<dd>
																<h4>
																	<span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;附子主要含乌头碱、次乌头碱、乌头胺、中乌头碱等20多种成分，可用于医药、化工、军科、生态农药等行业，药理作用用于镇痛、强心、增强免疫力等，主治癌症疼痛，心衰，免疫力低下等。</span>
																</h4>
															</dd>
															<dd>
																<a
																	class="am-btn-success am-round am-icon-arrow-right btn"
																	href="#">&nbsp;种植技巧</a>
															</dd>
														</dl>
													</div>
													<div class="brand-side">
														<dl class="dl-sort">
															<dt>
																<span>立即订购</span>
															</dt>
															<dd>
																<a title="散装购买" target="_blank" href="${pageContext.request.contextPath }/goods.action?goods_id=8" rel="nofollow"><span>散装购买</span></a>
															</dd>
															<dd>
																<a title="批发零售" target="_blank" href="${pageContext.request.contextPath }/goods.action?goods_id=8" rel="nofollow"><span
																	class="red">批发零售</span></a>
															</dd>
														</dl>
													</div>
												</div>
											</div>
										</div>
									</div> <b class="arrow"></b>
								</li>

								<li class="appliance js_toggle relative">
									<div class="category-info">
										<h3 class="category-name b-category-name">
											<i><img
												src="${pageContext.request.contextPath }/images/index.png"></i><a
												class="ml-22" title="留坝香菇">留坝香菇</a>
										</h3>
										<em>&gt;</em>
									</div>
									<div class="menu-item menu-in top">
										<div class="area-in">
											<div class="area-bg">
												<div class="menu-srot">
													<div class="sort-side">
														<dl class="dl-sort">
															<dt>
																<span title="简介">简介</span>
															</dt>
															<dd>
																<img alt=""
																	src="${pageContext.request.contextPath }/images/xianggu.jpg">
															</dd>

														</dl>
														<dl class="dl-sort">
															<dt>
																<span title="留坝香菇">留坝香菇：</span>
															</dt>
															<dd>
																<h4>
																	<span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;留坝香菇是陕南香菇的统称，为陕西省一大特产。产地主要是陕南秦巴山区各县，与云贵高原、五岭山区并列为我国三大香菇集中分布地带之一。</span>
																</h4>
															</dd>
															<dd>
																<h4>
																	<span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;留坝香菇菌伞厚实，只片较大，朵形完整，大小均匀，香气浓郁，富含香菇精、桂醇、月桂醛等特殊物质，品质最佳。</span>
																</h4>
															</dd>
															<dd>
																<h4>
																	<span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;素有“植物性食品的顶峰”、“素中之荤”、“植物肉”、“山珍之王”、“上帝的食品”等等美称。</span>
																</h4>
															</dd>
														</dl>
													</div>
													<div class="brand-side">
														<dl class="dl-sort">
															<dt>
																<span>立即订购</span>
															</dt>
															<dd>
																<a title="散装购买" target="_blank" href="${pageContext.request.contextPath }/goods.action?goods_id=9" rel="nofollow"><span>散装购买</span></a>
															</dd>
															<dd>
																<a title="批发零售" target="_blank" href="${pageContext.request.contextPath }/goods.action?goods_id=9" rel="nofollow"><span
																	class="red">批发零售</span></a>
															</dd>
														</dl>
													</div>
												</div>
											</div>
										</div>
									</div> <b class="arrow"></b>
								</li>

								<li class="appliance js_toggle relative">
									<div class="category-info">
										<h3 class="category-name b-category-name">
											<i><img
												src="${pageContext.request.contextPath }/images/index.png"></i><a
												class="ml-22" title="略阳杜仲">略阳杜仲</a>
										</h3>
										<em>&gt;</em>
									</div>
									<div class="menu-item menu-in top">
										<div class="area-in">
											<div class="area-bg">
												<div class="menu-srot">
													<div class="sort-side">
														<dl class="dl-sort">
															<dt>
																<span title="简介">简介</span>
															</dt>
															<dd>
																<img alt=""
																	src="${pageContext.request.contextPath }/images/duzhong.jpg">
															</dd>

														</dl>
														<dl class="dl-sort">
															<dt>
																<span title="略阳杜仲">略阳杜仲：</span>
															</dt>
															<dd>
																<h4>
																	<span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;陕西略阳是杜仲的原生地、适生区，是杜仲的中心产区，被国家林业局首批命名为“杜仲之乡”。</span>
																</h4>
															</dd>
															<dd>
																<h4>
																	<span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;我国第一部药学专著《神农本草经》记载杜仲有：“味辛，平、无毒。治腰脊痛，补中、益气、坚筋骨、强志、除阴下痒湿、小便余沥。久服轻身耐老”之药效，是传统名贵中药材。</span>
																</h4>
															</dd>
															<dd>
																<h4>
																	<span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;加工的杜仲茶先后荣获首届中国杨凌农业高新技术成果博览会“后稷金像奖”、“七五”星火计划奖、陕西省第三届新技术成果金奖。</span>
																</h4>
															</dd>
														</dl>
													</div>
													<div class="brand-side">
														<dl class="dl-sort">
															<dt>
																<span>立即订购</span>
															</dt>
															<dd>
																<a title="散装购买" target="_blank" href="${pageContext.request.contextPath }/goods.action?goods_id=10" rel="nofollow"><span>散装购买</span></a>
															</dd>
															<dd>
																<a title="批发零售" target="_blank" href="${pageContext.request.contextPath }/goods.action?goods_id=10" rel="nofollow"><span
																	class="red">批发零售</span></a>
															</dd>
														</dl>
													</div>
												</div>
											</div>
										</div>
									</div> <b class="arrow"></b>
								</li>

								<li class="appliance js_toggle relative">
									<div class="category-info">
										<h3 class="category-name b-category-name">
											<i><img
												src="${pageContext.request.contextPath }/images/index.png"></i><a
												class="ml-22" title="佛坪山茱萸">佛坪山茱萸</a>
										</h3>
										<em>&gt;</em>
									</div>
									<div class="menu-item menu-in top">
										<div class="area-in">
											<div class="area-bg">
												<div class="menu-srot">
													<div class="sort-side">
														<dl class="dl-sort">
															<dt>
																<span title="简介">简介</span>
															</dt>
															<dd>
																<img alt=""
																	src="${pageContext.request.contextPath }/images/zhuyu.jpg">
															</dd>

														</dl>
														<dl class="dl-sort">
															<dt>
																<span title="佛坪山茱萸">佛坪山茱萸：</span>
															</dt>
															<dd>
																<h4>
																	<span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;佛坪山茱萸以果大、肉厚、味正、无病虫、色红油润、有效成分含量高等特点闻名全国。</span>
																</h4>
															</dd>
															<dd>
																<h4>
																	<span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;佛坪山茱萸已取得国家GAP认证和原产地标记注册认证，是全国山茱萸三大基地之一
																		，是“中国山茱萸之乡”和“国家级山茱萸规范化种植示范基地”。</span>
																</h4>
															</dd>
															<dd>
																<h4>
																	<span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;山茱萸果肉含有山茱萸甙、皂甙、黄酮体、赖氨酸、熊果酸，具有补益肝肾、涩精固脱等作用，是六味地黄丸系列产品的主要原料。</span>
																</h4>
															</dd>
														</dl>
													</div>
													<div class="brand-side">
														<dl class="dl-sort">
															<dt>
																<span>立即订购</span>
															</dt>
															<dd>
																<a title="散装购买" target="_blank" href="${pageContext.request.contextPath }/goods.action?goods_id=11" rel="nofollow"><span>散装购买</span></a>
															</dd>
															<dd>
																<a title="批发零售" target="_blank" href="${pageContext.request.contextPath }/goods.action?goods_id=11" rel="nofollow"><span
																	class="red">批发零售</span></a>
															</dd>
														</dl>
													</div>
												</div>
											</div>
										</div>
									</div> <b class="arrow"></b>
								</li>

							</ul>
						</div>
					</div>

				</div>
			</div>

			<!--轮播-->
			<script type="text/javascript">
				(function() {
					$('.am-slider').flexslider();
				});
				$(document).ready(function() {
					$("li").hover(function() {
						$(".category-content .category-list li.first .menu-in").css("display", "none");
						$(".category-content .category-list li.first").removeClass("hover");
						$(this).addClass("hover");
						$(this).children("div.menu-in").css("display", "block")
					}, function() {
						$(this).removeClass("hover")
						$(this).children("div.menu-in").css("display", "none")
					});
				})
			</script>
			

			<div class="clear"></div>
		</div>
		<script type="text/javascript">
			if ($(window).width() < 640) {
				function autoScroll(obj) {
					$(obj).find("ul").animate({
						marginTop : "-39px"
					}, 500, function() {
						$(this).css({
							marginTop : "0px"
						}).find("li:first").appendTo(this);
					})
				}
				$(function() {
					setInterval('autoScroll(".demo")', 3000);
				})
			}
		</script>
	</div>

	<div class="amz-banner">
		<div class="amz-container"
			data-am-scrollspy="{animation: 'scale-up', repeat: false}">
			<h5>带你走进汉中特色农业的秘密……</h5>

			<p>汉中特色农业</p>
		</div>
	</div>

	<section class="" id="amz-main" data-tag="getting-started">
	<div class="am-g am-g-fixed">
		<div class="col-md-3 am-u-md-3">
			<div id="amz-offcanvas" class="am-offcanvas doc-offcanvas">
				<section class="amz-sidebar am-offcanvas-bar">
				<ul class="am-nav">
					<li class="am-nav-header">汉中特色农业领头羊</li>

					<li><a href="#">陕南明珠&nbsp;&nbsp;-&nbsp;&nbsp;城固</a></li>

					<li><a href="#">秦汉咽喉&nbsp;&nbsp;-&nbsp;&nbsp;留坝</a></li>
					
					<li><a href="#">小江南&nbsp;&nbsp;-&nbsp;&nbsp;南郑</a></li>

					<li><a href="#">亚洲的“乌拉尔”&nbsp;&nbsp;-&nbsp;&nbsp;勉县</a></li>

					<li><a href="#">最适合人类居住的地方&nbsp;&nbsp;-&nbsp;&nbsp;西乡</a></li>

					<li class="am-nav-header">汉中特色农业最新资讯</li>
					<li><a rel="nofollow" href="#">汉中10余种特色农产品亮相南京</a></li>
					<li><a rel="nofollow" href="#">京东·汉中农产品招商大会在城固举行</a></li>
					<li><a rel="nofollow" href="#">陕西汉中特色旅游农产品亮相南通</a></li>
					<li><a rel="nofollow" href="#">汉中特色农产品精彩亮相西交会</a></li>
					<li><a rel="nofollow" href="#">西安—汉中农产品对接会 签约30个项目</a></li>
				</ul>
				</section>
				<div class="amz-pager">
					<a href="#up" class="am-icon-caret-up" data-rel="scrollUp"></a><a
						href="#down" class="am-icon-caret-down" data-rel="scrollDown"></a>
				</div>
			</div>
		</div>

		<!-- leftWrap-->
		<div class="leftWrap">

			<div class="list list_preferential">
				<div class="listTitle">
					<h3 class="itemName">
						<a href="#" target="_blank">陕南明珠&nbsp;-&nbsp;城固</a>
					</h3>
					<div class="clear"></div>
				</div>
				<a rel="nofollow"
					href="#"
					target="_blank" class="picLeft" title=""> <img
					src="${pageContext.request.contextPath }/images/lingtou.jpg"
					width="190px" height="190px" /></a>
				<div class="listRight">
					<div class="lrTop">
						<span class="lrTime">2018/5/22</span> <span> <a
							rel="nofollow" href="#">张骞故里</a> <a rel="nofollow" href="#">神奇桔乡</a>

						</span>
					</div>
					<div class="lrInfo">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;城固是汉中市第二人口大县及副中心城市，
										其交通便利，土地肥沃，物产富庶，升仙蜜桔、城固银峰等名优土特产在全国久负盛名，是全国粮油基地之一，素有西北地区之“陕南明珠”美誉。
										城固凭借其独特的地理优势，不断发展特色现代农业，产生了诸如“城固柑桔”和“张骞牌”汉中仙毫
										等具有特大影响力的品牌......
					</div>
					<div class="lrBot">
						<a href="#" class="good"><span class="scoreTotal good">城固柑橘</span></a>
						<a href="#" class="bad"><span class="scoreTotal">”张骞牌“汉中仙毫</span></a>


						<div class="botPart">
							<div class="buy" style="z-index: 2;">
								<a rel="nofollow" href="#" target="_blank">全文<i>&gt;</i></a>
							</div>
						</div>
						<div class="clear"></div>
					</div>
				</div>
				<div class="clear"></div>
			</div>
			<!-- list end -->
			
			<div class="list list_preferential">
				<div class="listTitle">
					<h3 class="itemName">
						<a href="#" target="_blank">城固&nbsp;-&nbsp;特色农产品展示</a>
					</h3>
					<div class="clear"></div>
				</div>
				<a rel="nofollow" href="#" target="_blank" class="picLeft" title=""> 
					<img src="${pageContext.request.contextPath }/images/lingtou_1.jpg" width="190px" height="190px" />
				</a>
				
				<a rel="nofollow" href="#" target="_blank" class="picLeft" title=""> 
					<img src="${pageContext.request.contextPath }/images/lingtou_2.jpg" width="190px" height="190px" />
				</a>
				<a rel="nofollow" href="#" target="_blank" class="picLeft" title=""> 
					<img src="${pageContext.request.contextPath }/images/lingtou_3.jpg" width="190px" height="190px" />
				</a>
				<div class="clear"></div>
			</div>
			<!-- list end -->
			
			<div class="list list_preferential">
				<div class="listTitle">
					<h3 class="itemName">
						<a href="#" target="_blank">城固&nbsp;-&nbsp;特色农产品资讯</a>
					</h3>
					<div class="clear"></div>
				</div>
				<a rel="nofollow"
					href="#"
					target="_blank" class="picLeft" title=""> <img
					src="${pageContext.request.contextPath }/images/lingtou_4.jpg"
					width="190px" height="190px" /></a>
				<div class="listRight">
					<div class="lrTop">
						<span class="lrTime">2018/4/10</span> <span> <a
							rel="nofollow" href="#">”张骞牌“汉中仙毫携手汉中10余种特色农产品亮相南京</a>

						</span>
					</div>
					<div class="lrInfo">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;协作·2018年陕西特色农产品南京宣传活动在江苏国际农业展览中心开幕。
										本次活动以“推介特色产品·助力产业扶贫”为主题，由陕西省农业厅联合江苏省农委共同主办，旨在展示陕西特色农产品和苏陕扶贫协作成果，推进“陕货进苏”。
										汉中精挑细选的10余种特色农产品亮相南京，其中就包括”张骞牌“汉中仙毫......
					</div>
					<div class="lrBot">

						<div class="botPart">
							<div class="buy" style="z-index: 2;">
								<a rel="nofollow" href="#" target="_blank">全文<i>&gt;</i></a>
							</div>
						</div>
						<div class="clear"></div>
					</div>
				</div>
				<div class="clear"></div>
			</div>
			<!-- list end -->
			
		</div>
		<!-- leftWrap end-->

	</div>
	</section>
	<a href="#amz-offcanvas"
		class="am-icon-btn am-icon-bars am-show-sm-only amz-sidebar-toggle"
		data-am-offcanvas><span class="am-sr-only">侧栏导航</span></a>
	<footer class="amz-footer">
	<div class="am-g am-g-fixed">
		<div class="col-md-4 col-md-push-8 am-u-md-4 am-u-md-push-8">
			<ul class="amz-social">
				<li><span></span></li>
				<li><span></span></li>
				<li><span></span></li>
			</ul>
		</div>
		<div class="col-md-8 col-md-pull-4 am-u-md-8 am-u-md-pull-4">
			<h2 class="amz-fd">汉中特色农业综合服务平台</h2>
			<ul class="amz-links">
				<li><a rel="nofollow" href="#" target="_blank">&nbsp;联系我们</a>
					| <a rel="nofollow" href="#">关于我们</a>
			</ul>
			<p class="amz-cp">
				<em>COPYRIGHT © 2018 JC.ALL RIGHTS RESERVED.</em>
			</p>
		</div>
	</div>
	<script src="http://cpro.baidustatic.com/cpro/ui/cm.js"
		type="text/javascript"></script> <script>
			var _hmt = _hmt || [];
			(function() {
				var hm = document.createElement("script");
				hm.src = "//hm.baidu.com/hm.js?a11f4390b8d1d6680f5efb7887ff0d54";
				var s = document.getElementsByTagName("script")[0];
				s.parentNode.insertBefore(hm, s);
			})();
		</script> </footer>

	<div class="am-modal am-modal-no-btn" tabindex="-1" id="am-wechat">
	</div>
	<div class="amz-toolbar" id="amz-toolbar">
		<a href="#top" title="回到顶部" class="am-icon-btn am-icon-arrow-up"
			id="amz-go-top"></a>
	</div>
	<script src="${pageContext.request.contextPath }/amazeui/main.min.js"></script>
</body>
</html>
