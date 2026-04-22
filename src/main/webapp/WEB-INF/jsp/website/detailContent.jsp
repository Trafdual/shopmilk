<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!-- Breadcrumbs -->
<div class="bg-secondary border-b border-slate-100 py-4">
    <div class="container mx-auto px-4">
        <nav class="flex text-sm font-medium text-slate-500 animate__animated animate__fadeInLeft">
            <a href="home" class="hover:text-primary-600 flex items-center">
                <i data-lucide="home" class="w-4 h-4 mr-2"></i> Trang chủ
            </a>
            <span class="mx-2">/</span>
            <a href="allProduct" class="hover:text-primary-600">Sản Phẩm</a>
            <span class="mx-2">/</span>
            <span class="text-slate-800 font-bold">${product.name}</span>
        </nav>
    </div>
</div>

<!-- Product Detail Section -->
<section class="py-12 md:py-20 bg-white">
    <div class="container mx-auto px-4">
        <div class="flex flex-col lg:flex-row gap-12 lg:gap-20">
            
            <!-- Left: Image Gallery -->
            <div class="w-full lg:w-1/2 animate__animated animate__fadeInLeft">
                <div class="sticky top-32">
                    <div class="bg-slate-50 rounded-premium p-8 border border-slate-100 premium-shadow">
                        <img src="${product.image}" alt="${product.name}" 
                             class="w-full h-auto object-contain mix-blend-multiply transition-transform duration-500 hover:scale-105">
                    </div>
                    <!-- Thumbnails (Placeholder if needed) -->
                    <div class="flex gap-4 mt-6">
                        <div class="w-20 h-20 rounded-2xl border-2 border-primary-500 p-2 bg-white">
                            <img src="${product.image}" class="w-full h-full object-contain">
                        </div>
                    </div>
                </div>
            </div>

            <!-- Right: Product Info -->
            <div class="w-full lg:w-1/2 animate__animated animate__fadeInRight space-y-8">
                <div>
                    <div class="flex items-center space-x-2 text-primary-600 font-bold text-xs uppercase tracking-widest mb-4">
                        <span class="bg-primary-100 px-3 py-1 rounded-full">${product.category.name}</span>
                        <span class="bg-green-100 text-green-700 px-3 py-1 rounded-full">Còn hàng</span>
                    </div>
                    <h1 class="text-3xl md:text-4xl font-bold text-slate-800 leading-tight mb-4">${product.name}</h1>
                    <div class="flex items-center space-x-2 mb-6 text-yellow-400">
                        <i data-lucide="star" class="w-4 h-4 fill-current"></i>
                        <i data-lucide="star" class="w-4 h-4 fill-current"></i>
                        <i data-lucide="star" class="w-4 h-4 fill-current"></i>
                        <i data-lucide="star" class="w-4 h-4 fill-current"></i>
                        <i data-lucide="star" class="w-4 h-4 fill-current"></i>
                        <span class="text-slate-400 text-xs font-medium ml-2">(128 đánh giá)</span>
                    </div>
                    <p class="text-4xl font-bold text-primary-600 tracking-tight">${product.price} <span class="text-xl font-medium">VNĐ</span></p>
                </div>

                <div class="prose prose-slate max-w-none text-slate-500 font-light leading-relaxed">
                    <p>${product.description}</p>
                </div>

                <div class="p-6 bg-slate-50 rounded-3xl border border-slate-100">
                    <div class="flex flex-wrap gap-8 items-end">
                        <div class="space-y-3">
                            <label class="block text-xs font-bold text-slate-400 uppercase tracking-widest">Số lượng mua</label>
                            <div class="flex items-center bg-white border border-slate-200 rounded-2xl p-1 w-32">
                                <button onclick="stepDown()" class="p-2 hover:bg-slate-50 rounded-xl transition-colors"><i data-lucide="minus" class="w-4 h-4"></i></button>
                                <input id="soluongdat" type="number" min="1" value="1" onchange="checkSoluong()"
                                       class="w-full text-center font-bold text-slate-800 outline-none border-none bg-transparent">
                                <button onclick="stepUp()" class="p-2 hover:bg-slate-50 rounded-xl transition-colors"><i data-lucide="plus" class="w-4 h-4"></i></button>
                            </div>
                        </div>
                        <div class="flex-1">
                             <p class="text-xs text-slate-400 mb-2 italic">Kho: <span class="text-slate-800 font-bold">${product.quantity}</span> sản phẩm sẵn có</p>
                             <form action="#" method="post">
                                <fieldset>
                                    <input type="hidden" name="cmd" value="_cart" />
                                    <input type="hidden" name="add" value="1" />
                                    <input type="hidden" name="item_name" value="${product.name}" />
                                    <input type="hidden" name="amount" value="${product.price}" />
                                    <input type="hidden" name="currency_code" value="VND" />
                                    <button type="submit" class="w-full flex items-center justify-center space-x-2 bg-primary-600 text-white font-bold py-4 rounded-2xl hover:bg-primary-700 transition-all premium-shadow shadow-primary-200">
                                        <i data-lucide="shopping-cart" class="w-5 h-5"></i>
                                        <span>THÊM VÀO GIỎ HÀNG</span>
                                    </button>
                                </fieldset>
                            </form>
                        </div>
                    </div>
                </div>

                <!-- Tabs Info -->
                <div class="space-y-4 pt-4">
                    <div class="border-b border-slate-100 pb-4">
                        <button class="flex items-center justify-between w-full text-left group">
                            <span class="font-bold text-slate-800 group-hover:text-primary-600 transition-colors">Thông tin dinh dưỡng</span>
                            <i data-lucide="plus" class="w-4 h-4 text-slate-300"></i>
                        </button>
                    </div>
                    <div class="border-b border-slate-100 pb-4">
                        <button class="flex items-center justify-between w-full text-left group">
                            <span class="font-bold text-slate-800 group-hover:text-primary-600 transition-colors">Hướng dẫn bảo quản</span>
                            <i data-lucide="plus" class="w-4 h-4 text-slate-300"></i>
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<script>
    lucide.createIcons();

    function stepUp() {
        document.getElementById('soluongdat').stepUp();
        checkSoluong();
    }
    
    function stepDown() {
        document.getElementById('soluongdat').stepDown();
        checkSoluong();
    }

    function checkSoluong(){
        var soluong = parseInt(document.getElementById("soluongdat").value);
        var soluongKho = parseInt("${product.quantity}");
        if(soluong > soluongKho){
            alert("Số lượng yêu cầu vượt quá số lượng hiện có trong kho!");
            document.getElementById("soluongdat").value = soluongKho;
        }
    }
</script>