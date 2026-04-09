<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html>
<html>
<head>
<title>Shop Milk | Order</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<!--Custom Theme files -->
<link href="static/css/bootstrap.css" rel="stylesheet" type="text/css"
	media="all" />
<link href="static/css/style.css" rel="stylesheet" type="text/css"
	media="all" />
<link rel="stylesheet" href="static/css/flexslider.css" type="text/css"
	media="screen" />
<!--//Custom Theme files -->
<!--js-->
<script src="static/js/jquery-1.11.1.min.js"></script>
<script src="static/js/modernizr.custom.js"></script>
<!--//js-->
<!--animation-effect-->
<link href="static/css/animate.min.css" rel="stylesheet">
<link
	href="//cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.css"
	rel="stylesheet">
<script src="static/js/wow.min.js"></script>
<script>
	 new WOW().init();
	</script>
<!--//animation-effect-->
<!--start-smooth-scrolling-->
<script type="text/javascript" src="static/js/move-top.js"></script>
<script type="text/javascript" src="static/js/easing.js"></script>
<!--//end-smooth-scrolling-->
</head>
<body>
	<!-- header -->
	<jsp:include page="website/header.jsp" />
	<!-- header -->

	<div class="breadcrumbs">
		<div class="container">
			<ol class="breadcrumb breadcrumb1 animated wow slideInLeft"
				data-wow-delay=".5s">
				<li><a href="home.html"><span
						class="glyphicon glyphicon-home" aria-hidden="true"></span>Home</a></li>
				<li class="active">Đặt Hàng</li>
			</ol>
		</div>
	</div>
	<!--//breadcrumbs-->
	<!--contact-->
	<div class="address">
		<!--address-->
		<div class="container">
			<div class="address-row">
				<div class="col-md-6 address-left wow fadeInLeft animated"
					data-wow-delay=".5s">
					<div class="address-grid">
						<h4 class="wow fadeIndown animated" data-wow-delay=".5s">Thông
							tin khách hàng</h4>
						<form:form id="orderForm" modelAttribute="orderForm">
							<form:input path="customerName" placeholder="Họ tên Quý khách" />
							<form:input path="phoneNumber" placeholder="Số điện thoại"
								maxlength="10" />
							<form:textarea path="address" placeholder="Địa chỉ" />
							<form:input id="orderTotal" type="hidden" path="total" />
							<button id="btnSave" type="button" onclick="return datHang()">Đặt
								hàng</button>
							<input id="noProductInCart" type="hidden" name="noProductInCart" />
						</form:form>
					</div>
				</div>
				<div class="col-md-6 address-right">
					<div class="address-info wow fadeInRight animated"
						data-wow-delay=".5s">
						<h4>Hình thức vận chuyển</h4>

						<p>
							<input type="radio" /> GIAO HÀNG NHANH
						</p>
						<br>
						<p>
							<input type="radio" /> GIAO HÀNG THƯỜNG
						</p>
					</div>
					<div style="height: 322px;"
						class="address-info address-mdl wow fadeInRight animated"
						data-wow-delay=".7s">
						<h4 style="text-align: center;">Xác nhận Đơn hàng</h4>
					
						<table id="cartDetail">
							<tr>
								<td style="width: 50px;">STT</td>
								<td style="width: 175px;">Tên SP</td>
								<td style="width: 150px;">Giá</td>
								<td style="width: 50px;">SL</td>
							</tr>

						</table>
						<table>
							<tr>
								<td style="width: 50px;">Tổng:</td>
								<td style="width: 175px;" id="TotalCart"></td>
							</tr>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!--footer-->
	<jsp:include page="website/footer.jsp" />
	<!--footer-->

	<!--search jQuery-->
	<script src="static/js/main.js"></script>
	<!--//search jQuery-->
	<script src="static/js/minicart.js"></script>
	<script
		src="//cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js"></script>
	<!--smooth-scrolling-of-move-up-->

	<script src="static/js/Order.js"></script>
	<script type="text/javascript">
	
	   $(document).ready(function(){
		  
		   $(".scroll").click(function(event){		
				event.preventDefault();
				$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
			});
		   var items = paypal.minicart.cart.items(),
   		cartTotal = paypal.minicart.cart.total(),
   		productPrice = 0,
			quantity = 0;
		if(items.length > 0) {
			for (var i = 0; i < items.length; i++) {
				quantity = items[i].get('quantity');
				productPrice = items[i].get('amount');
				document.getElementById("cartDetail").innerHTML +=
					"<tr> <td>" + (i + 1) + "</td> <td>" +
					items[i].get('item_name') + "</td> <td>" +
					productPrice + "</td> <td>" + quantity + "</td> </tr>";
				document.getElementById('orderForm').innerHTML +=
					'<input type="hidden" value="' + items[i].get('item_name') + '" name="productName' + (i+1) + '" />' +
					'<input type="hidden" value="' + quantity + '" name="productQuantity' + (i+1) + '" />';
			}
			if(quantity > 0) {
				document.getElementById("cart-box").innerHTML =
					'<a style="background-color: #DCDCDC; border: 1px solid #FFF; padding: 5px 21px;" href="order">ĐẶT HÀNG</a>';
			}
			document.getElementById('noProductInCart').value = items.length;
			document.getElementById("cartTotal").innerHTML = cartTotal + " VNĐ (" + quantity + ")";
		} else {
			document.getElementById("cartTotal").innerHTML = "0 VNĐ (0)";
		}
		document.getElementById('TotalCart').innerHTML = cartTotal + ' VNĐ';
		document.getElementById('orderTotal').value = cartTotal;
	   })
	    
	</script>
</body>

<!--//smooth-scrolling-of-move-up-->
<!--Bootstrap core JavaScript
    ================================================== -->
<!--Placed at the end of the document so the pages load faster -->
<script src="static/js/bootstrap.js"></script>

<script>
    paypal.minicart.render({
    	strings: {
            button: "VNĐ",
            buttonAlt: "Tổng tiền:",
            discount: "Giảm giá:"
        }
    });
   
    
    
    
    
    
    //function datHang có toarst thông báo thành công
    function datHang(){
	    var customerName=document.getElementById("customerName").value;
		   var phoneNumber=document.getElementById("phoneNumber").value;
		   var address=document.getElementById("address").value;
		   var orderTotal=Number.parseInt(document.getElementById("orderTotal").value);
	    	
	    	if(customerName==""){
	    		toastr.error("Họ Tên không được để trống");
	    		return;
	    	}
	    	if(phoneNumber==""){
	    		toastr.error("Số điện thoại không được để trống");
	    		return;
	    	}
	    	if(address==""){
	    		toastr.error("Địa chỉ không được để trống");
	    		return;
	    	}
	    
	    	$.ajax({
	    			url:'/order',
	    			method:"post",
	    			data:$("#orderForm").serialize(),
	    			success:function(res){
	    				toastr.success('Đặt hàng thành công', {timeOut: 5000})
	    				setTimeout(()=>{
	    					window.location.href = "/home"
	    				},1000)
	    			}
	   
	    		})
	    };
    
    paypal.minicart.cart.on('add', function() {
    	var items = this.items(),
			quantity = 0,
			price = 0,
			total = this.total();
	
		for (var i = 0; i < items.length; i++) {
			quantity += items[i].get('quantity');
			price = items[i].get('amount');
		}
		document.getElementById("cartTotal").innerHTML = total + " VNĐ" + " (" + quantity + ")";
    });

    paypal.minicart.cart.on('remove', function() { 
    	var items = this.items(),
    		quantity = 0,
    		total = this.total();
		for (var i = 0; i < items.length; i++) {
			quantity += items[i].get('quantity');
		}
		document.getElementById("cartTotal").innerHTML = total + " VNĐ" + " (" + quantity + ")";
    });
	
    if (~window.location.search.indexOf('reset=true')) {
		paypal.minicart.reset();
	}
</script>
</html>