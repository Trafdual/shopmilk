<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!-- Swiper CSS -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css" />

<section class="relative bg-secondary overflow-hidden h-[calc(100vh-96px)] flex items-center">
    <div class="container mx-auto px-4 h-full py-6 md:py-8">
        <div class="flex flex-col lg:flex-row gap-8 h-full">
            
            <!-- Category Sidebar (Smart Height) -->
            <div class="w-full lg:w-1/4 h-full hidden lg:block animate__animated animate__fadeInLeft">
                <div class="bg-white/90 backdrop-blur-xl rounded-premium border border-white/50 p-6 premium-shadow h-full flex flex-col overflow-hidden">
                    <h3 class="text-[10px] font-bold text-slate-400 mb-6 flex items-center uppercase tracking-[0.3em]">
                        <i data-lucide="layers" class="w-4 h-4 mr-3 text-primary-500"></i>
                        Danh Mục
                    </h3>
                    <ul class="space-y-1 flex-1 overflow-y-auto custom-scrollbar pr-2 mb-4">
                        <c:forEach var="category" items="${categories}">
                            <li>
                                <a href="searchProduct?cateID=${category.id}" 
                                   class="flex items-center justify-between p-3 rounded-2xl hover:bg-slate-50 transition-all group">
                                    <span class="text-xs text-slate-600 group-hover:text-primary-700 font-medium">${category.name}</span>
                                    <i data-lucide="chevron-right" class="w-4 h-4 text-slate-300 group-hover:text-primary-400 transition-all"></i>
                                </a>
                            </li>
                        </c:forEach>
                    </ul>
                    
                    <div class="mt-auto p-6 rounded-3xl bg-slate-900 text-white relative overflow-hidden shrink-0">
                        <div class="relative z-10">
                            <h4 class="luxury-text text-base italic">Special Offer</h4>
                            <p class="text-[9px] text-slate-400 mb-4">Dành cho bạn hôm nay.</p>
                            <button class="text-[10px] font-bold border-b border-primary-400 hover:text-primary-400 transition-colors uppercase tracking-widest">Khám phá</button>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Luxury Hero Swiper (Perfect Fit) -->
            <div class="w-full lg:w-3/4 h-full animate__animated animate__fadeInRight">
                <div class="swiper mainHeroSwiper rounded-premium overflow-hidden premium-shadow h-full group">
                    <div class="swiper-wrapper h-full">
                        <!-- Slide 1 -->
                        <div class="swiper-slide relative h-full">
                            <img src="${pageContext.request.contextPath}/images/banner/luxury_hero.png" 
                                 class="absolute inset-0 w-full h-full object-cover transition-transform duration-[8000ms] group-hover:scale-110" alt="Luxury Milk">
                            <div class="absolute inset-0 bg-slate-900/30"></div>
                            <div class="absolute inset-0 flex items-center p-8 md:p-20 bg-gradient-to-r from-slate-900/60 to-transparent">
                                <div class="max-w-md space-y-6">
                                    <h2 class="luxury-text text-5xl md:text-7xl text-white italic leading-tight">
                                        Tinh Túy <br><span class="text-primary-300 not-italic font-bold">Mỗi Ngày</span>
                                    </h2>
                                    <p class="text-white text-sm md:text-lg font-light opacity-90 max-w-xs">Sữa Organic chắt lọc tinh túy thiên nhiên cho sức khỏe gia đình bạn.</p>
                                    <div class="flex space-x-4 pt-4">
                                        <a href="allProduct" class="bg-primary-600 hover:bg-white hover:text-primary-900 text-white px-10 py-4 rounded-2xl font-bold transition-all shadow-xl">Mua Ngay</a>
                                        <button class="bg-white/10 hover:bg-white/20 text-white px-10 py-4 rounded-2xl font-bold border border-white/30 backdrop-blur-md transition-all">Sản phẩm</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <!-- Slide 2 -->
                        <div class="swiper-slide relative h-full">
                            <img src="https://images.unsplash.com/photo-1550583724-12558142c73d?auto=format&fit=crop&q=80&w=1920" 
                                 class="absolute inset-0 w-full h-full object-cover" alt="Fresh Milk">
                            <div class="absolute inset-0 bg-slate-900/40"></div>
                            <div class="absolute inset-0 flex items-center justify-center text-center p-8">
                                <div class="max-w-lg space-y-6">
                                    <h2 class="luxury-text text-5xl md:text-6xl text-white italic">Hương Vị Sạch</h2>
                                    <p class="text-slate-200 text-base md:text-xl font-light">100% Nguyên chất từ thiên nhiên.</p>
                                    <a href="allProduct" class="inline-block bg-white text-slate-900 px-12 py-5 rounded-2xl font-bold hover:bg-primary-500 hover:text-white transition-all uppercase tracking-widest text-xs">Bộ Sưu Tập</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-button-next !text-white !w-10 !h-10 bg-white/10 hover:bg-white/30 backdrop-blur-md rounded-full border border-white/20 opacity-0 group-hover:opacity-100 transition-all after:!text-sm"></div>
                    <div class="swiper-button-prev !text-white !w-10 !h-10 bg-white/10 hover:bg-white/30 backdrop-blur-md rounded-full border border-white/20 opacity-0 group-hover:opacity-100 transition-all after:!text-sm"></div>
                    <div class="swiper-pagination !bottom-8"></div>
                </div>
            </div>

        </div>
    </div>
</section>

<!-- Swiper JS -->
<script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js"></script>
<script>
    document.addEventListener('DOMContentLoaded', function() {
        const swiper = new Swiper('.mainHeroSwiper', {
            loop: true,
            effect: 'fade',
            autoplay: { delay: 6000, disableOnInteraction: false },
            pagination: { el: '.swiper-pagination', clickable: true },
            navigation: { nextEl: '.swiper-button-next', prevEl: '.swiper-button-prev' },
        });
        if (typeof lucide !== 'undefined') lucide.createIcons();
    });
</script>

<style>
    .swiper-pagination-bullet { width: 30px; height: 2px; border-radius: 0; background: rgba(255,255,255,0.3); opacity: 1; transition: all 0.4s ease; }
    .swiper-pagination-bullet-active { background: #fff; width: 60px; }
    .custom-scrollbar::-webkit-scrollbar { width: 4px; }
    .custom-scrollbar::-webkit-scrollbar-track { background: transparent; }
    .custom-scrollbar::-webkit-scrollbar-thumb { background: #e2e8f0; border-radius: 10px; }
</style>