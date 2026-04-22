<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
    <title>Shop Milk | Liên hệ</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    
    <!-- Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Outfit:wght@300;400;500;600;700&display=swap" rel="stylesheet">
    
    <!-- UI Libraries -->
    <script src="https://cdn.tailwindcss.com"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css"/>
    <script src="https://unpkg.com/lucide@latest"></script>
    
    <!-- Tailwind Configuration -->
    <script>
        tailwind.config = {
            theme: {
                extend: {
                    colors: {
                        primary: {
                            50: '#f0f9ff',
                            100: '#e0f2fe',
                            200: '#bae6fd',
                            300: '#7dd3fc',
                            400: '#38bdf8',
                            50: '#0ea5e9',
                            600: '#0284c7',
                            700: '#0369a1',
                            800: '#075985',
                            900: '#0c4a6e',
                        },
                        secondary: '#FDFCF8',
                    },
                    fontFamily: {
                        sans: ['Outfit', 'sans-serif'],
                    },
                    borderRadius: {
                        'premium': '2rem',
                    }
                }
            }
        }
    </script>

    <style type="text/css">
        .glass-header {
            background: rgba(255, 255, 255, 0.7);
            backdrop-filter: blur(12px);
            -webkit-backdrop-filter: blur(12px);
            border-bottom: 1px solid rgba(255, 255, 255, 0.3);
        }
        body {
            font-family: 'Outfit', sans-serif;
            background-color: #FDFCF8;
        }
        .premium-shadow {
            box-shadow: 0 20px 25px -5px rgba(0, 0, 0, 0.05), 0 10px 10px -5px rgba(0, 0, 0, 0.02);
        }
    </style>

    <!-- Legacy styles -->
    <link href="static/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
    <link rel="stylesheet" href="static/css/flexslider.css" type="text/css" media="screen" />
    
    <!-- Scripts -->
    <script src="static/js/jquery-1.11.1.min.js"></script>
    <script src="static/js/wow.min.js"></script>
    <script>new WOW().init();</script>
</head>
<body>
	<!-- header -->
	<jsp:include page="website/header.jsp" />
	<!-- header -->
	
	
	<!-- content -->
	<jsp:include page="website/contentContact.jsp" />
	<!-- content -->
	
	<!--footer-->
	<jsp:include page="website/footer.jsp" />
	<!--footer-->
	
	<!--search jQuery-->
	<script src="static/js/main.js"></script>
	<!--//search jQuery-->
	
	<!--smooth-scrolling-of-move-up-->
	<script type="text/javascript">
		$(document).ready(function() {
		
			var defaults = {
				containerID: 'toTop', // fading element id
				containerHoverID: 'toTopHover', // fading element hover id
				scrollSpeed: 1200,
				easingType: 'linear' 
			};
			
			$().UItoTop({ easingType: 'easeOutQuart' });
			
		});
	</script>
	<!--//smooth-scrolling-of-move-up-->
	<!--Bootstrap core JavaScript
    ================================================== -->
    <!--Placed at the end of the document so the pages load faster -->
    <script src="static/js/bootstrap.js"></script>
</body>
<script src="static/js/minicart.js"></script>
<script>
paypal.minicart.render({
	strings: {
    	button: "VNĐ",
   		buttonAlt: "Tổng tiền:",
   		discount: "Giảm giá:"
	}
});

window.onload = function() {
	var items = paypal.minicart.cart.items(),
		quantity = 0;
	if(items.length > 0) {
		for (var i = 0; i < items.length; i++) {
			quantity += items[i].get('quantity');
		}
		if(quantity > 0) {
			document.getElementById("cart-box").innerHTML =
				'<a style="background-color: #DCDCDC; border: 1px solid #FFF; padding: 5px 21px;" href="order">ĐẶT HÀNG</a>';
		}
		document.getElementById("cartTotal").innerHTML = paypal.minicart.cart.total() + " VNĐ (" + quantity + ")";
	} else {
		document.getElementById("cartTotal").innerHTML = "0 VNĐ (0)";
	}
};

paypal.minicart.cart.on('remove', function() {
	var items = this.items(),
		quantity = 0,
		product_name = '',
		total = this.total();
	for (var i = 0; i < items.length; i++) {
		quantity += items[i].get('quantity');
		
	}
	document.getElementById("cartTotal").innerHTML = total + " VNĐ" + " (" + quantity + ")";
});

paypal.minicart.cart.on('checkout', function(idx, product) {
	alert('Check out !');
	window.location.replace("home");
});

$('.clickey').click(function(e) {
    e.stopPropagation();
    
	var items = paypal.minicart.cart.items(),
		length = items.length,
		count = 0,
		price = 0,
		productTotal = 0,
		product_name = '',
		i;
	
	for (i = 0; i < length; i++) {
		count = items[i].get('quantity');
		price = items[i].amount();
		product_name = items[i].get('item_name');
		productTotal = items[i].amount() * count
    }

	window.location.replace("order");
});

if (~window.location.search.indexOf('reset=true')) {
	paypal.minicart.reset();
}
</script>
</html>