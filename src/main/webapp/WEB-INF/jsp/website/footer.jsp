<%@ page pageEncoding="utf-8"%>

<footer class="bg-white border-t border-slate-100 pt-20 pb-12">
    <div class="container mx-auto px-4">
        <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-16 mb-20">
            <!-- Brand Column -->
            <div class="space-y-8">
                <a href="home" class="flex items-center space-x-4">
                    <div class="bg-slate-900 p-3 rounded-2xl">
                        <i data-lucide="milk" class="text-white w-6 h-6"></i>
                    </div>
                    <span class="luxury-text text-2xl font-bold text-slate-900 italic">Shop<span class="text-primary-600 not-italic">Milk</span></span>
                </a>
                <p class="text-sm leading-loose text-slate-500 font-light">
                    Sứ mệnh mang đến sự thuần khiết từ thiên nhiên. Chúng tôi cam kết chất lượng Organic tốt nhất cho sức khỏe gia đình bạn.
                </p>
                <!-- Social Icons with explicit Lucide names -->
                <div class="flex space-x-6">
                    <a href="#" class="text-slate-400 hover:text-primary-600 transition-all duration-300 transform hover:scale-110">
                        <i data-lucide="facebook" class="w-5 h-5"></i>
                    </a>
                    <a href="#" class="text-slate-400 hover:text-primary-600 transition-all duration-300 transform hover:scale-110">
                        <i data-lucide="instagram" class="w-5 h-5"></i>
                    </a>
                    <a href="#" class="text-slate-400 hover:text-primary-600 transition-all duration-300 transform hover:scale-110">
                        <i data-lucide="twitter" class="w-5 h-5"></i>
                    </a>
                    <a href="#" class="text-slate-400 hover:text-primary-600 transition-all duration-300 transform hover:scale-110">
                        <i data-lucide="youtube" class="w-5 h-5"></i>
                    </a>
                </div>
            </div>

            <!-- Explore Links -->
            <div class="lg:pl-8">
                <h3 class="text-[10px] font-bold text-slate-400 uppercase tracking-[0.3em] mb-10">Khám Phá</h3>
                <ul class="space-y-5 text-xs font-medium text-slate-600 uppercase tracking-widest">
                    <li><a href="home" class="hover:text-primary-600 transition-colors">Trang chủ</a></li>
                    <li><a href="allProduct" class="hover:text-primary-600 transition-colors">Tất cả sản phẩm</a></li>
                    <li><a href="khuyenmai" class="hover:text-primary-600 transition-colors">Bộ sưu tập mới</a></li>
                    <li><a href="contact" class="hover:text-primary-600 transition-colors">Liên hệ hỗ trợ</a></li>
                </ul>
            </div>

            <!-- Policies -->
            <div class="lg:pl-8">
                <h3 class="text-[10px] font-bold text-slate-400 uppercase tracking-[0.3em] mb-10">Dịch Vụ</h3>
                <ul class="space-y-5 text-xs font-medium text-slate-600 uppercase tracking-widest">
                    <li><a href="#" class="hover:text-primary-600 transition-colors">Chính sách giao hàng</a></li>
                    <li><a href="#" class="hover:text-primary-600 transition-colors">Bảo mật thông tin</a></li>
                    <li><a href="#" class="hover:text-primary-600 transition-colors">Đổi trả sản phẩm</a></li>
                    <li><a href="#" class="hover:text-primary-600 transition-colors">Câu hỏi thường gặp</a></li>
                </ul>
            </div>

            <!-- Luxury Contact -->
            <div class="bg-slate-50 p-8 rounded-[2rem] border border-slate-100">
                <h3 class="luxury-text text-xl italic text-slate-800 mb-6">Liên Hệ</h3>
                <div class="space-y-6 text-sm">
                    <div class="flex items-start space-x-4">
                        <i data-lucide="map-pin" class="w-4 h-4 text-primary-500 mt-1"></i>
                        <span class="text-slate-600 leading-relaxed font-light">123 Đường Sữa Tươi, Quận 1, TP. Hồ Chí Minh</span>
                    </div>
                    <div class="flex items-center space-x-4">
                        <i data-lucide="phone" class="w-4 h-4 text-primary-500"></i>
                        <span class="text-slate-900 font-bold">0396 275 692</span>
                    </div>
                    <div class="flex items-center space-x-4">
                        <i data-lucide="mail" class="w-4 h-4 text-primary-500"></i>
                        <span class="text-slate-600 font-medium">nhom4@gmail.com</span>
                    </div>
                </div>
                <div class="mt-8 pt-6 border-t border-slate-200">
                    <p class="text-[10px] text-slate-400 font-bold uppercase">Hỗ trợ 24/7</p>
                </div>
            </div>
        </div>

        <div class="pt-12 border-t border-slate-100 flex flex-col md:flex-row justify-between items-center text-[10px] font-bold uppercase tracking-[0.2em] text-slate-400">
            <p>&copy; 2024 L'atelier de Shop Milk. All Rights Reserved.</p>
            <div class="flex space-x-8 mt-4 md:mt-0">
                <a href="#" class="hover:text-primary-600 transition-colors">Terms</a>
                <a href="#" class="hover:text-primary-600 transition-colors">Privacy</a>
                <a href="#" class="hover:text-primary-600 transition-colors">Cookies</a>
            </div>
        </div>
    </div>
</footer>

<script>
    // Force re-initialization of all icons on the page
    if(typeof lucide !== 'undefined') {
        lucide.createIcons();
    }
</script>