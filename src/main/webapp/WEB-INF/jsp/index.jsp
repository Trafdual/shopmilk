<%@ page pageEncoding="utf-8"%> <%@ taglib
uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
  <head>
    <title>Shop Milk | Home</title>
    <jsp:include page="website/head.jsp" />
  </head>
  <body>
    <!-- header -->
    <jsp:include page="website/header.jsp" />
    <!-- header -->

    <!--banner-->
    <jsp:include page="website/banner.jsp" />
    <!--banner-->

    <!-- content -->
    <jsp:include page="website/content.jsp" />
    <!-- content -->

    <!--footer-->
    <jsp:include page="website/footer.jsp" />
    <!--footer-->

    <!--search jQuery-->
    <script src="static/js/main.js"></script>
    <!--//search jQuery-->

    <!--smooth-scrolling-of-move-up-->
    <script type="text/javascript">
      $(document).ready(function () {
        var defaults = {
          containerID: "toTop", // fading element id
          containerHoverID: "toTopHover", // fading element hover id
          scrollSpeed: 1200,
          easingType: "linear",
        };

        /* $().UItoTop({ easingType: 'easeOutQuart' }); */
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
        button: "Thanh Toán",
        buttonAlt: "Tổng tiền:",
        discount: "Giảm giá:",
      },
    });

    window.onload = function () {
      var items = paypal.minicart.cart.items(),
        quantity = 0;
      if (items.length > 0) {
        for (var i = 0; i < items.length; i++) {
          quantity += items[i].get("quantity");
        }
        if (quantity > 0) {
          document.getElementById("cart-box").innerHTML =
            '<a style="background-color: #DCDCDC; border: 1px solid #FFF; padding: 5px 21px;" href="order">ĐẶT HÀNG</a>';
        }
        document.getElementById("cartTotal").innerHTML =
          paypal.minicart.cart.total() + " VNĐ (" + quantity + ")";
      } else {
        document.getElementById("cartTotal").innerHTML = "0 VNĐ (0)";
      }
    };

    paypal.minicart.cart.on("add", function () {
      var items = this.items(),
        quantity = 0,
        price = 0,
        total = this.total();

      for (var i = 0; i < items.length; i++) {
        quantity += items[i].get("quantity");
        price = items[i].get("amount");
      }
      if (quantity > 0) {
        document.getElementById("cart-box").innerHTML =
          '<a style="background-color: #DCDCDC; border: 1px solid #FFF; padding: 5px 21px;" href="order">ĐẶT HÀNG</a>';
      }
      document.getElementById("cartTotal").innerHTML =
        total + " VNĐ" + " (" + quantity + ")";
    });

    paypal.minicart.cart.on("remove", function () {
      var items = this.items(),
        quantity = 0,
        total = this.total();
      for (var i = 0; i < items.length; i++) {
        quantity += items[i].get("quantity");
      }
      document.getElementById("cartTotal").innerHTML =
        total + " VNĐ" + " (" + quantity + ")";
    });

    $(".clickey").click(function (e) {
      e.stopPropagation();

      var items = paypal.minicart.cart.items(),
        length = items.length,
        count = 0,
        price = 0,
        productTotal = 0,
        product_name = "",
        i;

      for (i = 0; i < length; i++) {
        count = items[i].get("quantity");
        price = items[i].amount();
        product_name = items[i].get("item_name");
        productTotal = items[i].amount() * count;
      }

      window.location.replace("order");
    });

    if (~window.location.search.indexOf("reset=true")) {
      paypal.minicart.reset();
    }
  </script>
</html>
