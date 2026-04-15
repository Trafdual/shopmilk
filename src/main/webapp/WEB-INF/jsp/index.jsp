<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="vi">
<head>
    <title>Shop Milk | Trang Chủ Cao Cấp</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    
    <!-- Fonts: Outfit for Body, Playfair Display for Luxury Headings -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Outfit:wght@300;400;500;600;700&family=Playfair+Display:ital,wght@0,400;0,700;1,400&display=swap" rel="stylesheet">
    
    <!-- UI Libraries -->
    <script src="https://cdn.tailwindcss.com"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css"/>
    <!-- Use UMD version of Lucide to ensure all icons are available globally -->
    <script src="https://unpkg.com/lucide@latest/dist/umd/lucide.min.js"></script>
    
    <!-- Tailwind Configuration -->
    <script>
        tailwind.config = {
            theme: {
                extend: {
                    colors: {
                        primary: {
                            50: '#f0f9ff',
                            100: '#e0f2fe',
                            200: '#bae6fd',
                            300: '#7dd3fc',
                            400: '#38bdf8',
                            500: '#0ea5e9',
                            600: '#0284c7',
                            700: '#0369a1',
                            800: '#075985',
                            900: '#0c4a6e',
                        },
                        secondary: '#FDFCF8',
                    },
                    fontFamily: {
                        sans: ['Outfit', 'sans-serif'],
                        serif: ['Playfair Display', 'serif'],
                    },
                    borderRadius: {
                        'premium': '2.5rem',
                    }
                }
            }
        }
    </script>

    <style type="text/css">
        .glass-header {
            background: rgba(255, 255, 255, 0.7);
            backdrop-filter: blur(16px);
            -webkit-backdrop-filter: blur(16px);
            border-bottom: 1px solid rgba(255, 255, 255, 0.2);
        }
        body {
            font-family: 'Outfit', sans-serif;
            background-color: #FDFCF8;
            color: #1e293b;
            overflow-x: hidden;
        }
        .luxury-text {
            font-family: 'Playfair Display', serif;
        }
        .premium-shadow {
            box-shadow: 0 25px 50px -12px rgba(0, 0, 0, 0.04);
        }
        ::selection {
            background-color: #0ea5e9;
            color: white;
        }
        /* Custom scrollbar for premium feel */
        ::-webkit-scrollbar { width: 8px; }
        ::-webkit-scrollbar-track { background: #f1f1f1; }
        ::-webkit-scrollbar-thumb { background: #cbd5e1; border-radius: 10px; }
        ::-webkit-scrollbar-thumb:hover { background: #94a3b8; }
    </style>

    <script src="static/js/jquery-1.11.1.min.js"></script>
    <script src="static/js/wow.min.js"></script>
    <script>new WOW().init();</script>
</head>
<body class="selection:bg-primary-500 selection:text-white">
    <!-- header -->
    <jsp:include page="website/header.jsp" />
    
    <!-- banner -->
    <jsp:include page="website/banner.jsp" />
    
    <!-- content -->
    <jsp:include page="website/content.jsp" />
    
    <!-- footer -->
    <jsp:include page="website/footer.jsp" />

    <!-- Global Scripts -->
    <script>
        document.addEventListener('DOMContentLoaded', function() {
            // Global initialization
            if (window.lucide) {
                lucide.createIcons();
            }
        });
        
        // Re-call just to be extra safe after all images/fragments load
        window.onload = function() {
             if (window.lucide) {
                lucide.createIcons();
            }
        };
    </script>
</body>
</html>