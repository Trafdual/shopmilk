<%@page import="com.shopmilk.entities.User"%>
<%@ page pageEncoding="utf-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<!-- Ultra-Compact Luxury Header (Fixed Height: 96px) -->
<header class="glass-header sticky top-0 z-50 w-full bg-white/80 backdrop-blur-xl border-b border-slate-100 h-24 overflow-hidden">
    <!-- Top Bar (Minimal Hidden on Mobile) -->
    <div class="bg-slate-900 text-white/60 py-1 text-[9px] font-bold uppercase tracking-[0.2em]">
        <div class="container mx-auto px-4 flex justify-between items-center">
            <span class="flex items-center"><i data-lucide="phone" class="w-2.5 h-2.5 mr-2 text-primary-400"></i> Hotline: 0396 275 692</span>
            <div class="flex items-center space-x-6">
                <sec:authorize access="!isAuthenticated()">
                    <a href="login" class="hover:text-white transition-colors">Đăng Nhập</a>
                    <a href="register" class="hover:text-white transition-colors">Đăng Ký</a>
                </sec:authorize>
                <sec:authorize access="isAuthenticated()">
                    <%
                        String username = "";
                        Object principal = org.springframework.security.core.context.SecurityContextHolder.getContext().getAuthentication().getPrincipal();
                        if (principal instanceof org.springframework.security.core.userdetails.UserDetails) {
                            username = ((User)principal).getFirstName();
                        }
                    %>
                    <div class="flex items-center space-x-4">
                        <span class="text-primary-300">Chào, <%=username %></span>
                        <a href="${pageContext.request.contextPath}/perform_logout" class="hover:text-red-400">Thoát</a>
                    </div>
                </sec:authorize>
            </div>
        </div>
    </div>

    <!-- Main Navigation Bar (Combined) -->
    <div class="h-16">
        <div class="container mx-auto px-4 h-full flex items-center justify-between gap-4">
            <!-- Logo -->
            <a href="home" class="flex items-center space-x-3 shrink-0">
                <div class="bg-slate-900 p-2 rounded-xl">
                    <i data-lucide="milk" class="text-white w-5 h-5"></i>
                </div>
                <span class="luxury-text text-xl font-bold text-slate-900 italic">Shop<span class="text-primary-600 not-italic">Milk</span></span>
            </a>

            <!-- Search Bar (Compact Center) -->
            <div class="hidden md:flex flex-1 max-w-sm">
                <form action="searchProduct" method="get" class="relative w-full">
                    <input type="text" name="searchValue" 
                           class="w-full bg-slate-50 border border-slate-200 rounded-full py-2 pl-4 pr-10 text-xs text-slate-600 outline-none focus:ring-1 focus:ring-primary-200 focus:bg-white transition-all"
                           placeholder="Tìm kiếm sản phẩm...">
                    <button type="submit" class="absolute right-3 top-1/2 -translate-y-1/2 text-slate-400 hover:text-primary-600">
                        <i data-lucide="search" class="w-3.5 h-3.5"></i>
                    </button>
                </form>
            </div>

            <!-- Right Actions: Nav + Cart -->
            <div class="flex items-center space-x-6">
                <nav class="hidden lg:block">
                    <ul class="flex items-center space-x-6 text-[10px] font-bold text-slate-500 uppercase tracking-widest">
                        <li><a href="home" class="hover:text-primary-600 transition-colors">Trang Chủ</a></li>
                        <li><a href="allProduct" class="hover:text-primary-600 transition-colors">Sản Phẩm</a></li>
                        <li><a href="contact" class="hover:text-primary-600 transition-colors">Liên Hệ</a></li>
                    </ul>
                </nav>

                <div class="h-6 w-[1px] bg-slate-200 hidden lg:block"></div>

                <a href="order" class="relative group">
                    <div class="p-2 bg-slate-50 rounded-xl group-hover:bg-primary-50 transition-all">
                        <i data-lucide="shopping-bag" class="w-5 h-5 text-slate-700 group-hover:text-primary-600"></i>
                    </div>
                    <span id="cartCountHeader" class="absolute -top-1 -right-1 bg-primary-600 text-white text-[8px] w-4 h-4 rounded-full flex items-center justify-center font-bold">0</span>
                </a>
            </div>
        </div>
    </div>
</header>