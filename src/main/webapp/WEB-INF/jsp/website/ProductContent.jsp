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
            <span class="text-slate-800">Sản Phẩm</span>
        </nav>
    </div>
</div>

<!-- Products Section -->
<section class="py-12 bg-white">
    <div class="container mx-auto px-4">
        <div class="flex flex-col lg:flex-row gap-12">
            
            <!-- Sidebar (Category & Filter) -->
            <aside class="w-full lg:w-1/4 animate__animated animate__fadeInLeft">
                <div class="bg-white rounded-premium border border-slate-100 premium-shadow p-8 sticky top-32">
                    <form action="searchProduct" method="get">
                        <!-- Price Filter -->
                        <div class="mb-10">
                            <h4 class="text-lg font-bold text-slate-800 mb-6 flex items-center">
                                <i data-lucide="sliders" class="w-5 h-5 mr-2 text-primary-600"></i>
                                Lọc theo giá
                            </h4>
                            <div id="slider-range" class="mb-6 h-2 bg-slate-100 rounded-full border-none"></div>
                            <div class="flex items-center justify-between gap-4">
                                <div class="relative flex-1">
                                    <input type="text" id="amount" readonly
                                           class="w-full bg-slate-50 border border-slate-200 rounded-xl px-4 py-2 text-sm text-slate-700 outline-none text-center font-bold">
                                </div>
                            </div>
                            <input type="hidden" id="amountHidden" name="priceRange" />
                            <c:if test="${priceValue1 != null}">
                                <input id="priceValue1" type="hidden" value="${priceValue1}" />
                                <input id="priceValue2" type="hidden" value="${priceValue2}" />
                            </c:if>
                        </div>

                        <!-- Brand Filter -->
                        <div class="mb-10">
                            <h4 class="text-lg font-bold text-slate-800 mb-6 flex items-center">
                                <i data-lucide="tags" class="w-5 h-5 mr-2 text-primary-600"></i>
                                Hãng sản xuất
                            </h4>
                            <div class="space-y-3">
                                <c:forEach var="category" items="${categories}">
                                    <label class="flex items-center p-3 rounded-2xl hover:bg-primary-50 transition-all cursor-pointer group">
                                        <input type="radio" value="${category.id}" name="cateID" 
                                               class="w-4 h-4 text-primary-600 bg-slate-100 border-slate-300 focus:ring-primary-500 focus:ring-2 transition-all"
                                               <c:if test="${category.id == categoryID}">checked="checked"</c:if>>
                                        <span class="ml-3 text-slate-600 group-hover:text-primary-700 transition-colors">${category.name}</span>
                                    </label>
                                </c:forEach>
                            </div>
                        </div>

                        <button type="submit" class="w-full bg-primary-600 text-white font-bold py-3 rounded-2xl hover:bg-primary-700 transition-all premium-shadow shadow-primary-200">
                             ÁP DỤNG BỘ LỌC
                        </button>
                    </form>
                </div>
            </aside>

            <!-- Main Content (Product List) -->
            <main class="w-full lg:w-3/4">
                <div class="flex justify-between items-center mb-8 bg-slate-50 p-4 rounded-2xl border border-slate-100 animate__animated animate__fadeInDown">
                    <p class="text-sm text-slate-500 font-medium">Hiển thị <span class="text-slate-800 font-bold">${products.size()}</span> sản phẩm phù hợp</p>
                    <div class="flex items-center space-x-2">
                        <span class="text-xs text-slate-400 uppercase font-bold tracking-widest">Sắp xếp:</span>
                        <select class="bg-transparent border-none text-sm font-bold text-slate-700 outline-none cursor-pointer focus:ring-0">
                            <option>Mới nhất</option>
                            <option>Giá thấp đến cao</option>
                            <option>Giá cao đến thấp</option>
                        </select>
                    </div>
                </div>

                <div class="grid grid-cols-1 sm:grid-cols-2 xl:grid-cols-3 gap-8">
                    <c:choose>
                        <c:when test="${products == null || products.size() == 0}">
                            <div class="col-span-full py-20 text-center animate__animated animate__fadeIn">
                                <div class="bg-primary-50 w-20 h-20 rounded-full flex items-center justify-center mx-auto mb-6">
                                    <i data-lucide="search-x" class="text-primary-400 w-10 h-10"></i>
                                </div>
                                <h3 class="text-xl font-bold text-slate-800 mb-2">Không tìm thấy kết quả</h3>
                                <p class="text-slate-500">Thử thay đổi bộ lọc hoặc từ khóa tìm kiếm của bạn.</p>
                                <a href="allProduct" class="inline-block mt-6 text-primary-600 font-bold hover:underline">Xem tất cả sản phẩm</a>
                            </div>
                        </c:when>
                        <c:otherwise>
                            <c:forEach var="product" items="${products}">
                                <div class="group bg-white rounded-premium border border-slate-100 premium-shadow overflow-hidden transition-all duration-300 hover:-translate-y-2 animate__animated animate__fadeInUp">
                                    <div class="relative aspect-[4/3] overflow-hidden bg-slate-50 p-4">
                                        <a href="productDetail?cateID=${product.category.id}&productID=${product.id}">
                                            <img src="${product.image}" alt="${product.name}" class="w-full h-full object-contain transition-transform duration-500 group-hover:scale-110">
                                        </a>
                                        <div class="absolute inset-0 bg-slate-900/40 opacity-0 group-hover:opacity-100 transition-opacity duration-300 flex items-center justify-center space-x-3">
                                            <a href="productDetail?cateID=${product.category.id}&productID=${product.id}" class="p-3 bg-white rounded-full text-primary-600 hover:bg-primary-600 hover:text-white transition-all transform translate-y-4 group-hover:translate-y-0 duration-300">
                                                <i data-lucide="eye" class="w-5 h-5"></i>
                                            </a>
                                            <form action="#" method="post" class="inline">
                                                <input type="hidden" name="cmd" value="_cart" />
                                                <input type="hidden" name="item_name" value="${product.name}" />
                                                <input type="hidden" name="amount" value="${product.price}" />
                                                <button type="submit" class="p-3 bg-primary-600 rounded-full text-white hover:bg-primary-700 transition-all transform translate-y-4 group-hover:translate-y-0 duration-500">
                                                    <i data-lucide="shopping-cart" class="w-5 h-5"></i>
                                                </button>
                                            </form>
                                        </div>
                                    </div>
                                    <div class="p-6">
                                        <div class="flex items-center mb-1">
                                            <c:forEach begin="1" end="5" var="i">
                                                <i data-lucide="star" class="w-3 h-3 ${i <= (product.views != null ? product.views : 5) ? 'text-yellow-400 fill-current' : 'text-slate-200'}"></i>
                                            </c:forEach>
                                        </div>
                                        <h6 class="text-slate-800 font-bold mb-2 h-12 overflow-hidden line-clamp-2 leading-tight">
                                            <a href="productDetail?cateID=${product.category.id}&productID=${product.id}" class="hover:text-primary-600 transition-colors">
                                                ${product.name}
                                            </a>
                                        </h6>
                                        <p class="text-primary-600 font-bold text-lg">${product.price}đ</p>
                                    </div>
                                </div>
                            </c:forEach>
                        </c:otherwise>
                    </c:choose>
                </div>
            </main>

        </div>
    </div>
</section>

<!-- jQuery UI Slider Logic Bridge -->
<script type='text/javascript'>
    $(window).load(function() {
        const sliderRange = $("#slider-range");
        const amountDisplay = $("#amount");
        const amountHidden = $("#amountHidden");
        const priceV1 = $("#priceValue1").val() || 0;
        const priceV2 = $("#priceValue2").val() || 30000000;

        sliderRange.slider({
            range: true,
            min: 0,
            max: 30000000,
            step: 500000,
            values: [priceV1, priceV2],
            slide: function(event, ui) {
                amountDisplay.val(ui.values[0].toLocaleString() + "đ - " + ui.values[1].toLocaleString() + "đ");
                amountHidden.val(ui.values[0] + "-" + ui.values[1]);
            }
        });
        
        amountDisplay.val(sliderRange.slider("values", 0).toLocaleString() + "đ - " + sliderRange.slider("values", 1).toLocaleString() + "đ");
        amountHidden.val(sliderRange.slider("values", 0) + "-" + sliderRange.slider("values", 1));
    });

    lucide.createIcons();
</script>

<style>
    /* Styling for jQuery UI Slider to match Tailwind theme */
    .ui-slider-horizontal .ui-slider-range {
        background: #38bdf8; /* primary-400 */
    }
    .ui-slider .ui-slider-handle {
        width: 1.25rem;
        height: 1.25rem;
        border-radius: 9999px;
        background: #0284c7; /* primary-600 */
        border: 2px solid white;
        cursor: pointer;
        outline: none;
        top: -0.5rem;
    }
    .ui-slider .ui-slider-handle:hover {
        background: #0369a1;
        transform: scale(1.1);
    }
</style>