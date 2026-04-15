<%@page import="com.shopmilk.entities.User"%>
<%@ page pageEncoding="utf-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<link href="static/css/jquery-ui/jquery-ui.css" rel="stylesheet">

<div class="header">
	<div class="top-header navbar navbar-default"
		style="background-color:#33414E; border-radius: 0; margin-left:-1px">
		<!--header-one-->

		<div class="container">
			<div class="nav navbar-nav wow fadeInLeft animated" data-wow-delay=".5s">
				<p style="color:white;">
					Chào mừng đến với <b>Shop Milk</b>
					<sec:authorize access="!isAuthenticated()">
						<a href="login" style="font-weight: bold;">Đăng Nhập </a>

					</sec:authorize>
					<sec:authorize access="isAuthenticated()">
						<%
						String username = "";
						String role= "";
						String display="";

						Object principal =
						org.springframework.security.core.context.SecurityContextHolder.getContext().getAuthentication().getPrincipal();
						if (principal instanceof
						org.springframework.security.core.userdetails.UserDetails) {
						username = ((User)principal).getFirstName();
						role=((User)principal).getRole();
						if(!role.trim().equalsIgnoreCase("admin"))
						{
						display = "none";
						}

						<!-- System.out.println("ROLE = " + role);
						System.out.println("LENGTH = " + role.length()); -->

						}
						%>
						<a href="${pageContext.request.contextPath}/perform_logout"
							style="font-weight: bold;"><%=username %></a>
						<a href="${pageContext.request.contextPath}/admin"
							style="font-weight: bold; display: <%=display %> ">Trang quản trị</a>
					</sec:authorize>

				</p>
			</div>
			<div
				class="nav navbar-nav navbar-right social-icons wow fadeInRight animated"
				data-wow-delay=".5s">
				<ul>
					<li><a href="#"> </a></li>
					<li><a href="#" class="pin" style="background-color:white;"> </a></li>
					<li><a href="#" class="in" style="background-color:white;"> </a></li>
					<li><a href="#" class="be" style="background-color:white;"> </a></li>
					<li><a href="#" class="you" style="background-color:white;"> </a></li>
					<li><a href="#" class="vimeo" style="background-color:white;"> </a></li>
				</ul>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
	<div class="header-two navbar navbar-default">
		<!--header-two-->
		<div class="container">
			<div class="nav navbar-nav header-two-left">
				<ul>
					<li>
						<i class="glyphicon glyphicon-earphone" aria-hidden="true"></i>
						0396275692
					</li>
					<li>
						<i class="glyphicon glyphicon-envelope" aria-hidden="true"></i>
						<a>nhom4@gmail.com</a>
					</li>
				</ul>
			</div>
			<div class="nav navbar-nav logo wow zoomIn animated" data-wow-delay=".7s">
				<h1>
					<a href="home">
						Shop <b>Milk</b>
						<h5>Vì sức khỏe cộng đồng ! </h5>
					</a>
				</h1>
			</div>
			<div class="nav navbar-nav navbar-right header-two-right">
				<div class="header-right my-account">
					<a href="contact.html">
						<span class="glyphicon glyphicon-map-marker" aria-hidden="true"></span>
						Liên Hệ
					</a>
				</div>
				<div class="header-right cart">
					<a href="#">
						<span class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></span>
					</a>
					<h4>
						<a href="#">
							<span id="cartTotal"> 0 VNĐ (0)</span>
						</a>
					</h4>
					<div class="cart-box">
						<form action>
							<input type="hidden" name="cmd" value="_cart" />
							<input type="hidden" name="display" value="1" />
							<p>
								<input id="cartButton"
									style="background-color: transparent; border: none;" type="submit"
									name="submit" value="Xem giỏ hàng" />
							</p>
						</form>
						<div class="clearfix"></div>
						<div id="cart-box">

						</div>
					</div>
				</div>
				<div class="clearfix"></div>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
	<div class="top-nav navbar navbar-default">
		<!--header-three-->
		<div class="container">
			<nav class="navbar" role="navigation">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse"
						data-target="#bs-example-navbar-collapse-1">
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar"></span>
						<span class="icon-bar"></span> <span class="icon-bar"></span>
					</button>
				</div>
				<!--navbar-header-->
				<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav top-nav-info">
						<li><a href="home">Trang Chủ</a></li>
						<!-- 						<li><a href="#">Giới Thiệu</a></li> -->
						<li><a href="allProduct">Sản Phẩm</a></li>
						<li class="dropdown"><a href="#" class="dropdown-toggle list1"
								data-toggle="dropdown">Tin Tức<b class="caret"></b></a>
							<ul class="dropdown-menu multi-column menu-two multi-column3">
								<div class="row">
									<div class="col-sm-4 menu-grids">
										<ul class="multi-column-dropdown">
											<li><a class="list" href="khuyenmai.html">Khuyến Mại</a></li>
											<li><a class="list" href="dinhduong.html">Dinh Dưỡng</a></li>
										</ul>
									</div>
									<div class="col-sm-8 menu-grids">
										<a href="products.html">
											<div class="new-add">
												<img src="static/images/banner/timkiem.jpg" />
											</div>
										</a>
									</div>
									<div class="clearfix"></div>
								</div>
							</ul></li>
						<li class="dropdown grid"><a href="#" class="dropdown-toggle list1"
								data-toggle="dropdown">Liên Hệ<b class="caret"></b></a>
							<ul class="dropdown-menu multi-column menu-two multi-column3">
								<div class="row">
									<div class="col-sm-4 menu-grids">
										<ul class="multi-column-dropdown">
											<li><a class="list" href="contact.html">Thông Tin</a></li>
											<li><a class="list"
													href="https://www.facebook.com/profile.php?id=100006191496178">FaceBook</a></li>
										</ul>
									</div>
									<div class="col-sm-8 menu-grids">
										<a href="products.html">
											<div class="new-add">
												<img src="static/images/banner/timkiem.jpg" />
											</div>
										</a>
									</div>
									<div class="clearfix"></div>
								</div>
							</ul></li>
					</ul>
					<div class="clearfix"></div>
					<!--//navbar-collapse-->
					<header class="cd-main-header">
						<ul class="cd-header-buttons">
							<li><a class="cd-search-trigger" href="#cd-search">
									<span></span></a></li>
						</ul>
						<!-- cd-header-buttons -->
					</header>
				</div>
				<!--//navbar-header-->
			</nav>
			<div id="cd-search" class="cd-search">
				<form action="search" method="get">
					<input id="autocomplete" type="text" name="searchValue"
						placeholder="Tìm kiếm sản phẩm..." />
					<input type="submit" value="Tìm" />
				</form>
			</div>
			<script src="static/js/jquery/jquery.js"></script>
			<script src="static/js/jquery/jquery-ui.js"></script>
			<script type="text/javascript">
				var availableTags = [
					"Sữa Vinamilk",
					"Sữa TH True Milk",
					"Sữa Nutifood",
					"Sữa Nestle",
					"Sữa Ensure"
				];
				$( "#autocomplete" ).autocomplete({
					source: availableTags
				});
			</script>
		</div>
	</div>
</div>