<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>  
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <title>Shop Milk | Đăng Ký Thành Viên</title>
    
    <!-- Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Outfit:wght@300;400;500;600;700&display=swap" rel="stylesheet">
    
    <!-- UI Libraries -->
    <script src="https://cdn.tailwindcss.com"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css"/>
    <script src="https://unpkg.com/lucide@latest"></script>
    
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
                    },
                    fontFamily: {
                        sans: ['Outfit', 'sans-serif'],
                    },
                }
            }
        }
    </script>

    <style>
        body {
            font-family: 'Outfit', sans-serif;
            background: linear-gradient(135deg, #e0f2fe 0%, #fdfcf8 100%);
        }
    </style>
</head>
<body class="min-h-screen flex items-center justify-center p-4 py-12">
    <div class="w-full max-w-2xl animate__animated animate__fadeInUp">
        <div class="text-center mb-8">
            <a href="home" class="inline-flex items-center space-x-2 group">
                <div class="bg-primary-600 p-2 rounded-xl">
                    <i data-lucide="milk" class="text-white w-8 h-8"></i>
                </div>
                <span class="text-3xl font-bold text-slate-800 tracking-tight">Shop<span class="text-primary-600">Milk</span></span>
            </a>
            <p class="text-slate-500 mt-2">Bắt đầu hành trình sống khỏe cùng chúng tôi!</p>
        </div>

        <div class="bg-white/70 backdrop-blur-xl border border-white/50 rounded-[2.5rem] shadow-2xl overflow-hidden">
            <div class="p-8 md:p-12">
                <h3 class="text-2xl font-bold text-slate-800 mb-8 text-center uppercase tracking-wider">Tạo Tài Khoản</h3>
                
                <c:if test="${res.message != null}">
                    <div class="bg-red-50 border-l-4 border-red-500 p-4 mb-8">
                        <div class="flex items-center">
                            <i data-lucide="alert-circle" class="text-red-500 w-5 h-5 mr-3"></i>
                            <p class="text-red-700 text-sm font-medium">${res.message}</p>
                        </div>
                    </div>
                </c:if>

                <form:form method="POST" action="/save-ac" modelAttribute="ac" class="space-y-6">
                    <div class="grid grid-cols-1 md:grid-cols-2 gap-6">
                        <div class="space-y-2">
                            <label class="text-xs font-bold text-slate-400 uppercase tracking-widest ml-1" for="inputFirstName">Họ</label>
                            <div class="relative group">
                                <i data-lucide="user" class="absolute left-4 top-1/2 -translate-y-1/2 w-5 h-5 text-slate-400 group-focus-within:text-primary-600 transition-colors"></i>
                                <form:input class="w-full bg-slate-50 border border-slate-200 rounded-2xl py-3 pl-12 pr-4 focus:ring-2 focus:ring-primary-400 focus:border-transparent transition-all outline-none text-slate-700" 
                                           id="inputFirstName" path="firstName" placeholder="Nhập họ" required="required" />
                            </div>
                        </div>
                        <div class="space-y-2">
                            <label class="text-xs font-bold text-slate-400 uppercase tracking-widest ml-1" for="inputLastName">Tên</label>
                            <div class="relative group">
                                <i data-lucide="user" class="absolute left-4 top-1/2 -translate-y-1/2 w-5 h-5 text-slate-400 group-focus-within:text-primary-600 transition-colors"></i>
                                <form:input class="w-full bg-slate-50 border border-slate-200 rounded-2xl py-3 pl-12 pr-4 focus:ring-2 focus:ring-primary-400 focus:border-transparent transition-all outline-none text-slate-700" 
                                           id="inputLastName" path="lastName" placeholder="Nhập tên" required="required" />
                            </div>
                        </div>
                    </div>

                    <div class="space-y-2">
                        <label class="text-xs font-bold text-slate-400 uppercase tracking-widest ml-1" for="inputEmailAddress">Địa chỉ Email</label>
                        <div class="relative group">
                            <i data-lucide="mail" class="absolute left-4 top-1/2 -translate-y-1/2 w-5 h-5 text-slate-400 group-focus-within:text-primary-600 transition-colors"></i>
                            <form:input class="w-full bg-slate-50 border border-slate-200 rounded-2xl py-3 pl-12 pr-4 focus:ring-2 focus:ring-primary-400 focus:border-transparent transition-all outline-none text-slate-700" 
                                       id="inputEmailAddress" type="email" path="mail" placeholder="example@gmail.com" required="required" />
                        </div>
                    </div>

                    <div class="space-y-2">
                        <label class="text-xs font-bold text-slate-400 uppercase tracking-widest ml-1" for="inputPassword">Mật khẩu</label>
                        <div class="relative group">
                            <i data-lucide="lock" class="absolute left-4 top-1/2 -translate-y-1/2 w-5 h-5 text-slate-400 group-focus-within:text-primary-600 transition-colors"></i>
                            <form:input class="w-full bg-slate-50 border border-slate-200 rounded-2xl py-3 pl-12 pr-4 focus:ring-2 focus:ring-primary-400 focus:border-transparent transition-all outline-none text-slate-700" 
                                       id="inputPassword" type="password" path="password" placeholder="Nhập mật khẩu" required="required" />
                        </div>
                    </div>

                    <button type="submit" class="w-full bg-primary-600 text-white font-bold py-4 rounded-2xl hover:bg-primary-700 transition-all shadow-xl shadow-primary-200 transform hover:-translate-y-1 active:scale-95">
                        ĐĂNG KÝ THÀNH VIÊN
                    </button>
                </form:form>
            </div>
            
            <div class="bg-slate-50 py-6 text-center border-t border-slate-100">
                <p class="text-sm text-slate-500">Đã có tài khoản? 
                    <a href="login" class="text-primary-600 font-bold hover:underline">Đăng nhập ngay</a>
                </p>
            </div>
        </div>
        
        <div class="mt-8 text-center">
            <p class="text-[10px] text-slate-400 uppercase tracking-widest">&copy; 2024 Shop Milk. Premium Experience.</p>
        </div>
    </div>

    <script>
        lucide.createIcons();
    </script>
</body>
</html>