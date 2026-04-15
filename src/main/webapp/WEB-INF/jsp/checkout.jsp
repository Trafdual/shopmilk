<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html>
<html lang="vi">
<head>
    <title>Shop Milk | Hoàn tất đặt hàng</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    
    <!-- Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Outfit:wght@300;400;500;600;700&display=swap" rel="stylesheet">
    
    <!-- UI Libraries -->
    <script src="https://cdn.tailwindcss.com"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css"/>
    <link href="//cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.css" rel="stylesheet">
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
                            600: '#0284c7',
                            700: '#0369a1',
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
        body {
            font-family: 'Outfit', sans-serif;
            background-color: #FDFCF8;
        }
        .premium-shadow {
            box-shadow: 0 20px 25px -5px rgba(0, 0, 0, 0.05), 0 10px 10px -5px rgba(0, 0, 0, 0.02);
        }
        .glass-card {
            background: rgba(255, 255, 255, 0.8);
            backdrop-filter: blur(10px);
            border: 1px solid rgba(255, 255, 255, 0.3);
        }
    </style>

    <!-- Legacy scripts & tools -->
    <script src="static/js/jquery-1.11.1.min.js"></script>
    <script src="static/js/wow.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js"></script>
    <script>new WOW().init();</script>
</head>
<body>
    <!-- header -->
    <jsp:include page="website/header.jsp" />

    <!-- Breadcrumbs -->
    <div class="bg-secondary border-b border-slate-100 py-4">
        <div class="container mx-auto px-4">
            <nav class="flex text-sm font-medium text-slate-500 animate__animated animate__fadeInLeft">
                <a href="home" class="hover:text-primary-600 flex items-center">
                    <i data-lucide="home" class="w-4 h-4 mr-2"></i> Trang chủ
                </a>
                <span class="mx-2">/</span>
                <span class="text-slate-800 font-bold">Thanh Toán</span>
            </nav>
        </div>
    </div>

    <!-- Checkout Content -->
    <section class="py-12 md:py-20 bg-white">
        <div class="container mx-auto px-4">
            <div class="text-center mb-16">
                <h2 class="text-3xl font-bold text-slate-800 mb-4">Hoàn Tất Đặt Hàng</h2>
                <div class="flex justify-center items-center space-x-4 max-w-sm mx-auto">
                    <div class="flex flex-col items-center">
                        <div class="w-10 h-10 bg-primary-600 text-white rounded-full flex items-center justify-center font-bold">1</div>
                        <span class="text-[10px] uppercase font-bold text-primary-600 mt-2">Giỏ hàng</span>
                    </div>
                    <div class="h-[2px] flex-1 bg-primary-600"></div>
                    <div class="flex flex-col items-center">
                        <div class="w-10 h-10 bg-primary-600 text-white rounded-full flex items-center justify-center font-bold">2</div>
                        <span class="text-[10px] uppercase font-bold text-primary-600 mt-2">Thanh toán</span>
                    </div>
                    <div class="h-[2px] flex-1 bg-slate-200"></div>
                    <div class="flex flex-col items-center">
                        <div class="w-10 h-10 bg-slate-200 text-slate-400 rounded-full flex items-center justify-center font-bold">3</div>
                        <span class="text-[10px] uppercase font-bold text-slate-400 mt-2">Xác nhận</span>
                    </div>
                </div>
            </div>

            <div class="flex flex-col lg:flex-row gap-12">
                <!-- Left: Shipping Form -->
                <div class="w-full lg:w-3/5 animate__animated animate__fadeInLeft">
                    <div class="bg-white rounded-premium border border-slate-100 premium-shadow p-8 md:p-10">
                        <div class="flex items-center space-x-3 mb-8">
                            <div class="bg-primary-50 p-3 rounded-2xl">
                                <i data-lucide="truck" class="text-primary-600 w-6 h-6"></i>
                            </div>
                            <h4 class="text-xl font-bold text-slate-800">Thông tin giao nhận</h4>
                        </div>

                        <form:form id="orderForm" modelAttribute="orderForm" class="space-y-6">
                            <div class="grid grid-cols-1 md:grid-cols-2 gap-6">
                                <div class="space-y-2">
                                    <label class="text-xs font-bold text-slate-400 uppercase tracking-widest ml-1">Họ tên khách hàng</label>
                                    <div class="relative group">
                                        <i data-lucide="user" class="absolute left-4 top-1/2 -translate-y-1/2 w-5 h-5 text-slate-400 group-focus-within:text-primary-600 transition-colors"></i>
                                        <form:input path="customerName" id="customerName" 
                                                   class="w-full bg-slate-50 border border-slate-200 rounded-2xl py-3 pl-12 pr-4 focus:ring-2 focus:ring-primary-400 focus:border-transparent transition-all outline-none text-slate-700"
                                                   placeholder="Nhập họ và tên" />
                                    </div>
                                </div>
                                <div class="space-y-2">
                                    <label class="text-xs font-bold text-slate-400 uppercase tracking-widest ml-1">Số điện thoại</label>
                                    <div class="relative group">
                                        <i data-lucide="phone" class="absolute left-4 top-1/2 -translate-y-1/2 w-5 h-5 text-slate-400 group-focus-within:text-primary-600 transition-colors"></i>
                                        <form:input path="phoneNumber" id="phoneNumber" maxlength="10"
                                                   class="w-full bg-slate-50 border border-slate-200 rounded-2xl py-3 pl-12 pr-4 focus:ring-2 focus:ring-primary-400 focus:border-transparent transition-all outline-none text-slate-700"
                                                   placeholder="Nhập số điện thoại" />
                                    </div>
                                </div>
                            </div>

                            <div class="space-y-2">
                                <label class="text-xs font-bold text-slate-400 uppercase tracking-widest ml-1">Địa chỉ nhận hàng</label>
                                <div class="relative group">
                                    <i data-lucide="map-pin" class="absolute left-4 top-4 w-5 h-5 text-slate-400 group-focus-within:text-primary-600 transition-colors"></i>
                                    <form:textarea path="address" id="address" rows="4"
                                                   class="w-full bg-slate-50 border border-slate-200 rounded-2xl py-3 pl-12 pr-4 focus:ring-2 focus:ring-primary-400 focus:border-transparent transition-all outline-none text-slate-700 resize-none"
                                                   placeholder="Địa chỉ chi tiết (Số nhà, đường, phường/xã...)" />
                                </div>
                            </div>

                            <div class="pt-4">
                                <p class="text-xs font-bold text-slate-400 uppercase tracking-widest mb-4 ml-1">Phương thức vận chuyển</p>
                                <div class="grid grid-cols-1 sm:grid-cols-2 gap-4">
                                    <label class="relative flex items-center p-4 bg-slate-50 border-2 border-primary-100 rounded-2xl cursor-pointer hover:border-primary-400 transition-all group">
                                        <input type="radio" name="shipping" checked class="w-4 h-4 text-primary-600">
                                        <div class="ml-4">
                                            <p class="font-bold text-slate-800 text-sm">Giao hàng nhanh</p>
                                            <p class="text-xs text-slate-500">Nhận trong 2-4 giờ</p>
                                        </div>
                                    </label>
                                    <label class="relative flex items-center p-4 bg-white border border-slate-200 rounded-2xl cursor-pointer hover:border-primary-400 transition-all group">
                                        <input type="radio" name="shipping" class="w-4 h-4 text-primary-600">
                                        <div class="ml-4">
                                            <p class="font-bold text-slate-800 text-sm">Giao hàng tiêu chuẩn</p>
                                            <p class="text-xs text-slate-500">Nhận trong ngày</p>
                                        </div>
                                    </label>
                                </div>
                            </div>

                            <form:input id="orderTotal" type="hidden" path="total" />
                            <input id="noProductInCart" type="hidden" name="noProductInCart" />
                            
                            <button id="btnSave" type="button" onclick="datHang()" 
                                    class="w-full bg-primary-600 text-white font-bold py-4 rounded-2xl hover:bg-primary-700 transition-all premium-shadow shadow-primary-200 flex items-center justify-center space-x-2">
                                <i data-lucide="check-circle" class="w-5 h-5"></i>
                                <span>XÁC NHẬN ĐẶT HÀNG</span>
                            </button>
                        </form:form>
                    </div>
                </div>

                <!-- Right: Summary -->
                <div class="w-full lg:w-2/5 animate__animated animate__fadeInRight">
                    <div class="bg-slate-900 rounded-premium p-8 md:p-10 text-white premium-shadow">
                        <h4 class="text-xl font-bold mb-8 flex items-center">
                            <i data-lucide="shopping-bag" class="w-6 h-6 mr-3 text-primary-400"></i>
                            Tóm tắt đơn hàng
                        </h4>

                        <div class="space-y-4 mb-8">
                            <div id="cartDetailContainer" class="space-y-4 max-h-[300px] overflow-y-auto pr-2 custom-scrollbar">
                                <!-- JS will populate this -->
                                <table id="cartDetail" class="w-full text-sm">
                                    <thead class="text-slate-400 text-[10px] uppercase font-bold tracking-widest border-b border-slate-800">
                                        <tr>
                                            <th class="text-left pb-3">Sản phẩm</th>
                                            <th class="text-center pb-3">SL</th>
                                            <th class="text-right pb-3">Giá</th>
                                        </tr>
                                    </thead>
                                    <tbody id="cartItemsBody" class="divide-y divide-slate-800">
                                        <!-- Will be filled by JS -->
                                    </tbody>
                                </table>
                            </div>
                        </div>

                        <div class="space-y-4 border-t border-slate-800 pt-6">
                            <div class="flex justify-between text-slate-400 text-sm">
                                <span>Tạm tính:</span>
                                <span id="SubTotalCart">0 VNĐ</span>
                            </div>
                            <div class="flex justify-between text-slate-400 text-sm">
                                <span>Phí vận chuyển:</span>
                                <span>Miễn phí</span>
                            </div>
                            <div class="flex justify-between text-xl font-bold text-white pt-2">
                                <span>Tổng cộng:</span>
                                <span id="TotalCart" class="text-primary-400">0 VNĐ</span>
                            </div>
                        </div>

                        <div class="mt-8 p-4 bg-white/5 rounded-2xl border border-white/10 italic text-[10px] text-slate-400">
                            Cảm ơn quý khách đã tin dùng sản phẩm Milk Shop. Đơn hàng sẽ được xử lý sớm nhất có thể.
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- footer -->
    <jsp:include page="website/footer.jsp" />

    <!-- Scripts -->
    <script src="static/js/main.js"></script>
    <script src="static/js/minicart.js"></script>
    <script src="static/js/Order.js"></script>
    
    <script type="text/javascript">
        $(document).ready(function(){
            lucide.createIcons();
            
            var items = paypal.minicart.cart.items();
            var cartTotal = paypal.minicart.cart.total();
            var itemsBody = $("#cartItemsBody");
            
            if(items.length > 0) {
                for (var i = 0; i < items.length; i++) {
                    var quantity = items[i].get('quantity');
                    var name = items[i].get('item_name');
                    var amount = items[i].get('amount');
                    
                    var row = '<tr class="text-slate-200"> \
                                <td class="py-4 font-medium">' + name + '</td> \
                                <td class="py-4 text-center">' + quantity + '</td> \
                                <td class="py-4 text-right font-bold">' + amount.toLocaleString() + 'đ</td> \
                               </tr>';
                    itemsBody.append(row);
                    
                    $("#orderForm").append(
                        '<input type="hidden" value="' + name + '" name="productName' + (i+1) + '" />' +
                        '<input type="hidden" value="' + quantity + '" name="productQuantity' + (i+1) + '" />'
                    );
                }
                $("#noProductInCart").val(items.length);
            }
            
            $("#TotalCart").text(cartTotal.toLocaleString() + " VNĐ");
            $("#SubTotalCart").text(cartTotal.toLocaleString() + " VNĐ");
            $("#orderTotal").val(cartTotal);
        });

        function datHang(){
            var customerName = $("#customerName").val();
            var phoneNumber = $("#phoneNumber").val();
            var address = $("#address").val();
            
            if(!customerName){
                toastr.error("Vui lòng nhập Họ Tên"); return;
            }
            if(!phoneNumber || phoneNumber.length < 10){
                toastr.error("Số điện thoại không hợp lệ"); return;
            }
            if(!address){
                toastr.error("Vui lòng cung cấp địa chỉ giao hàng"); return;
            }
        
            $.ajax({
                url:'/order',
                method:"post",
                data:$("#orderForm").serialize(),
                success:function(res){
                    toastr.success('Đặt hàng thành công! Đang chuyển hướng...', {timeOut: 3000});
                    setTimeout(()=>{
                        paypal.minicart.reset();
                        window.location.href = "/home";
                    }, 2000);
                },
                error: function() {
                    toastr.error("Có lỗi xảy ra, vui lòng thử lại sau.");
                }
            });
        }
    </script>
</body>
</html>