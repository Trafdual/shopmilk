<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!-- Best Sellers -->
<section class="py-16 bg-white">
    <div class="container mx-auto px-4">
        <div class="text-center mb-12 animate__animated animate__fadeInUp">
            <h2 class="text-3xl md:text-4xl font-bold text-slate-800 mb-4">Sản Phẩm Bán Chạy</h2>
            <div class="w-24 h-1 bg-primary-600 mx-auto rounded-full"></div>
            <p class="text-slate-500 mt-4 font-light">Những dòng sữa được tin dùng nhất bởi hàng ngàn khách hàng.</p>
        </div>

        <div class="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-4 gap-8">
            <!-- Hardcoded items as seen in original content.jsp, but modernized -->
            <!-- Item 1 -->
            <div class="group bg-white rounded-premium border border-slate-100 premium-shadow overflow-hidden transition-all duration-300 hover:-translate-y-2 animate__animated animate__fadeInUp" data-wow-delay=".5s">
                <div class="relative aspect-square overflow-hidden bg-slate-50">
                    <img src="static/images/phone/suavina.jpg" class="w-full h-full object-contain transition-transform duration-500 group-hover:scale-110" alt="Milk">
                    <div class="absolute inset-0 bg-slate-900/40 opacity-0 group-hover:opacity-100 transition-opacity duration-300 flex items-center justify-center space-x-3">
                        <a href="#" class="p-3 bg-white rounded-full text-primary-600 hover:bg-primary-600 hover:text-white transition-all transform translate-y-4 group-hover:translate-y-0 duration-300">
                            <i data-lucide="eye" class="w-5 h-5"></i>
                        </a>
                        <a href="#" class="p-3 bg-primary-600 rounded-full text-white hover:bg-primary-700 transition-all transform translate-y-4 group-hover:translate-y-0 duration-500">
                            <i data-lucide="shopping-cart" class="w-5 h-5"></i>
                        </a>
                    </div>
                    <span class="absolute top-4 left-4 bg-red-500 text-white text-[10px] font-bold px-2 py-1 rounded-full uppercase">Hot</span>
                </div>
                <div class="p-6 text-center">
                    <div class="flex justify-center mb-2 text-yellow-400">
                        <i data-lucide="star" class="w-3 h-3 fill-current"></i>
                        <i data-lucide="star" class="w-3 h-3 fill-current"></i>
                        <i data-lucide="star" class="w-3 h-3 fill-current"></i>
                        <i data-lucide="star" class="w-3 h-3 fill-current"></i>
                        <i data-lucide="star" class="w-3 h-3 fill-current"></i>
                    </div>
                    <h5 class="text-slate-800 font-bold mb-2 group-hover:text-primary-600 transition-colors">Sữa Bột Vinamilk</h5>
                    <p class="text-primary-600 font-bold text-lg">500.000đ</p>
                </div>
            </div>

            <!-- Item 2 -->
            <div class="group bg-white rounded-premium border border-slate-100 premium-shadow overflow-hidden transition-all duration-300 hover:-translate-y-2 animate__animated animate__fadeInUp" data-wow-delay=".7s">
                <div class="relative aspect-square overflow-hidden bg-slate-50">
                    <img src="static/images/phone/ensure.jpg" class="w-full h-full object-contain transition-transform duration-500 group-hover:scale-110" alt="Milk">
                    <div class="absolute inset-0 bg-slate-900/40 opacity-0 group-hover:opacity-100 transition-opacity duration-300 flex items-center justify-center space-x-3">
                        <a href="#" class="p-3 bg-white rounded-full text-primary-600 hover:bg-primary-600 hover:text-white transition-all transform translate-y-4 group-hover:translate-y-0 duration-300">
                            <i data-lucide="eye" class="w-5 h-5"></i>
                        </a>
                        <a href="#" class="p-3 bg-primary-600 rounded-full text-white hover:bg-primary-700 transition-all transform translate-y-4 group-hover:translate-y-0 duration-500">
                            <i data-lucide="shopping-cart" class="w-5 h-5"></i>
                        </a>
                    </div>
                </div>
                <div class="p-6 text-center">
                    <div class="flex justify-center mb-2 text-yellow-400">
                        <i data-lucide="star" class="w-3 h-3 fill-current"></i>
                        <i data-lucide="star" class="w-3 h-3 fill-current"></i>
                        <i data-lucide="star" class="w-3 h-3 fill-current"></i>
                        <i data-lucide="star" class="w-3 h-3 fill-current"></i>
                        <i data-lucide="star" class="w-3 h-3 fill-current"></i>
                    </div>
                    <h5 class="text-slate-800 font-bold mb-2 group-hover:text-primary-600 transition-colors">Sữa Bột Ensure Úc</h5>
                    <p class="text-primary-600 font-bold text-lg">500.000đ</p>
                </div>
            </div>

            <!-- Item 3 -->
            <div class="group bg-white rounded-premium border border-slate-100 premium-shadow overflow-hidden transition-all duration-300 hover:-translate-y-2 animate__animated animate__fadeInUp" data-wow-delay=".9s">
                <div class="relative aspect-square overflow-hidden bg-slate-50">
                    <img src="static/images/phone/dielac.jpg" class="w-full h-full object-contain transition-transform duration-500 group-hover:scale-110" alt="Milk">
                    <div class="absolute inset-0 bg-slate-900/40 opacity-0 group-hover:opacity-100 transition-opacity duration-300 flex items-center justify-center space-x-3">
                        <a href="#" class="p-3 bg-white rounded-full text-primary-600 hover:bg-primary-600 hover:text-white transition-all transform translate-y-4 group-hover:translate-y-0 duration-300">
                            <i data-lucide="eye" class="w-5 h-5"></i>
                        </a>
                        <a href="#" class="p-3 bg-primary-600 rounded-full text-white hover:bg-primary-700 transition-all transform translate-y-4 group-hover:translate-y-0 duration-500">
                            <i data-lucide="shopping-cart" class="w-5 h-5"></i>
                        </a>
                    </div>
                </div>
                <div class="p-6 text-center">
                    <div class="flex justify-center mb-2 text-yellow-400">
                        <i data-lucide="star" class="w-3 h-3 fill-current"></i>
                        <i data-lucide="star" class="w-3 h-3 fill-current"></i>
                        <i data-lucide="star" class="w-3 h-3 fill-current"></i>
                        <i data-lucide="star" class="w-3 h-3 fill-current"></i>
                        <i data-lucide="star" class="w-3 h-3 fill-current"></i>
                    </div>
                    <h5 class="text-slate-800 font-bold mb-2 group-hover:text-primary-600 transition-colors">Sữa Bột Dielac</h5>
                    <p class="text-primary-600 font-bold text-lg">500.000đ</p>
                </div>
            </div>

            <!-- Item 4 -->
            <div class="group bg-white rounded-premium border border-slate-100 premium-shadow overflow-hidden transition-all duration-300 hover:-translate-y-2 animate__animated animate__fadeInUp" data-wow-delay="1.1s">
                <div class="relative aspect-square overflow-hidden bg-slate-50">
                    <img src="static/images/phone/pedia.jpg" class="w-full h-full object-contain transition-transform duration-500 group-hover:scale-110" alt="Milk">
                    <div class="absolute inset-0 bg-slate-900/40 opacity-0 group-hover:opacity-100 transition-opacity duration-300 flex items-center justify-center space-x-3">
                        <a href="#" class="p-3 bg-white rounded-full text-primary-600 hover:bg-primary-600 hover:text-white transition-all transform translate-y-4 group-hover:translate-y-0 duration-300">
                            <i data-lucide="eye" class="w-5 h-5"></i>
                        </a>
                        <a href="#" class="p-3 bg-primary-600 rounded-full text-white hover:bg-primary-700 transition-all transform translate-y-4 group-hover:translate-y-0 duration-500">
                            <i data-lucide="shopping-cart" class="w-5 h-5"></i>
                        </a>
                    </div>
                </div>
                <div class="p-6 text-center">
                    <div class="flex justify-center mb-2 text-yellow-400">
                        <i data-lucide="star" class="w-3 h-3 fill-current"></i>
                        <i data-lucide="star" class="w-3 h-3 fill-current"></i>
                        <i data-lucide="star" class="w-3 h-3 fill-current"></i>
                        <i data-lucide="star" class="w-3 h-3 fill-current"></i>
                        <i data-lucide="star" class="w-3 h-3 fill-current"></i>
                    </div>
                    <h5 class="text-slate-800 font-bold mb-2 group-hover:text-primary-600 transition-colors">Sữa Bột Pediasure</h5>
                    <p class="text-primary-600 font-bold text-lg">500.000đ</p>
                </div>
            </div>
        </div>
    </div>
</section>

<!-- Most Viewed Gallery -->
<section class="py-16 bg-secondary">
    <div class="container mx-auto px-4">
        <div class="text-center mb-12 animate__animated animate__fadeInUp">
            <h2 class="text-3xl md:text-4xl font-bold text-slate-800 mb-4">Xem Nhiều Nhất</h2>
            <div class="w-24 h-1 bg-primary-600 mx-auto rounded-full"></div>
            <p class="text-slate-500 mt-4 font-light">Những sản phẩm đang thu hút sự quan tâm lớn từ cộng đồng.</p>
        </div>

        <div class="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-4 gap-8">
            <c:forEach var="product" items="${mostViews}">
                <div class="group bg-white rounded-premium border border-slate-100 premium-shadow overflow-hidden transition-all duration-300 hover:-translate-y-2 animate__animated animate__fadeInUp">
                    <div class="relative aspect-[4/3] overflow-hidden bg-slate-50 p-4">
                        <a href="productDetail?cateID=${product.category.id}&productID=${product.id}">
                            <img src="${product.image}" alt="${product.name}" class="w-full h-full object-contain transition-transform duration-500 group-hover:scale-110">
                        </a>
                        <div class="absolute inset-0 bg-slate-900/40 opacity-0 group-hover:opacity-100 transition-opacity duration-300 flex items-center justify-center space-x-3">
                            <a href="productDetail?cateID=${product.category.id}&productID=${product.id}" class="p-3 bg-white rounded-full text-primary-600 hover:bg-primary-600 hover:text-white transition-all transform translate-y-4 group-hover:translate-y-0 duration-300">
                                <i data-lucide="eye" class="w-5 h-5"></i>
                            </a>
                            <a href="#" class="p-3 bg-primary-600 rounded-full text-white hover:bg-primary-700 transition-all transform translate-y-4 group-hover:translate-y-0 duration-500">
                                <i data-lucide="shopping-cart" class="w-5 h-5"></i>
                            </a>
                        </div>
                    </div>
                    <div class="p-6">
                        <h6 class="text-slate-800 font-bold mb-2 h-12 overflow-hidden line-clamp-2 leading-tight">
                            <a href="productDetail?cateID=${product.category.id}&productID=${product.id}" class="hover:text-primary-600 transition-colors">
                                ${product.name}
                            </a>
                        </h6>
                        <div class="flex items-center justify-between">
                            <p class="text-primary-600 font-bold text-lg">${product.price}đ</p>
                            <button class="text-slate-400 hover:text-red-500 transition-colors">
                                <i data-lucide="heart" class="w-5 h-5"></i>
                            </button>
                        </div>
                    </div>
                </div>
            </c:forEach>
        </div>
    </div>
</section>

<script>
    lucide.createIcons();
</script>