<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <title>Shop Milk | Đăng Nhập</title>
    
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
<body class="min-h-screen flex items-center justify-center p-4">
    <div class="w-full max-w-md animate__animated animate__fadeInUp">
        <div class="text-center mb-8">
            <a href="home" class="inline-flex items-center space-x-2 group">
                <div class="bg-primary-600 p-2 rounded-xl">
                    <i data-lucide="milk" class="text-white w-8 h-8"></i>
                </div>
                <span class="text-3xl font-bold text-slate-800 tracking-tight">Shop<span class="text-primary-600">Milk</span></span>
            </a>
            <p class="text-slate-500 mt-2">Chào mừng bạn trở lại!</p>
        </div>

        <div class="bg-white/70 backdrop-blur-xl border border-white/50 rounded-[2.5rem] shadow-2xl overflow-hidden">
            <div class="p-8 md:p-10">
                <h3 class="text-2xl font-bold text-slate-800 mb-8 text-center uppercase tracking-wider">Đăng Nhập</h3>
                
                <form method="post" action="${pageContext.request.contextPath}/perform_login" class="space-y-6">
                    <div class="space-y-2">
                        <label class="text-xs font-bold text-slate-400 uppercase tracking-widest ml-1" for="inputEmailAddress">Email</label>
                        <div class="relative group">
                            <i data-lucide="mail" class="absolute left-4 top-1/2 -translate-y-1/2 w-5 h-5 text-slate-400 group-focus-within:text-primary-600 transition-colors"></i>
                            <input class="w-full bg-slate-50 border border-slate-200 rounded-2xl py-3 pl-12 pr-4 focus:ring-2 focus:ring-primary-400 focus:border-transparent transition-all outline-none text-slate-700" 
                                   id="inputEmailAddress" type="text" name="username" placeholder="Nhập email của bạn" required />
                        </div>
                    </div>

                    <div class="space-y-2">
                        <label class="text-xs font-bold text-slate-400 uppercase tracking-widest ml-1" for="inputPassword">Mật khẩu</label>
                        <div class="relative group">
                            <i data-lucide="lock" class="absolute left-4 top-1/2 -translate-y-1/2 w-5 h-5 text-slate-400 group-focus-within:text-primary-600 transition-colors"></i>
                            <input class="w-full bg-slate-50 border border-slate-200 rounded-2xl py-3 pl-12 pr-12 focus:ring-2 focus:ring-primary-400 focus:border-transparent transition-all outline-none text-slate-700" 
                                   id="inputPassword" type="password" name="password" placeholder=" Nhập mật khẩu" required />
                            <button type="button" class="absolute right-4 top-1/2 -translate-y-1/2 text-slate-400 hover:text-slate-600">
                                <i data-lucide="eye" class="w-5 h-5"></i>
                            </button>
                        </div>
                    </div>

                    <div class="flex items-center justify-between text-sm">
                        <label class="flex items-center space-x-2 cursor-pointer group">
                            <input type="checkbox" id="rememberPasswordCheck" class="w-4 h-4 text-primary-600 bg-slate-100 border-slate-300 rounded focus:ring-primary-500">
                            <span class="text-slate-500 group-hover:text-slate-700 transition-colors">Ghi nhớ đăng nhập</span>
                        </label>
                        <a href="#" class="text-primary-600 font-bold hover:underline">Quên mật khẩu?</a>
                    </div>

                    <button type="submit" class="w-full bg-primary-600 text-white font-bold py-4 rounded-2xl hover:bg-primary-700 transition-all shadow-xl shadow-primary-200 transform hover:-translate-y-1 active:scale-95">
                        ĐĂNG NHẬP NGAY
                    </button>
                </form>
            </div>
            
            <div class="bg-slate-50 py-6 text-center border-t border-slate-100">
                <p class="text-sm text-slate-500">Chưa có tài khoản? 
                    <a href="register" class="text-primary-600 font-bold hover:underline">Đăng ký thành viên</a>
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