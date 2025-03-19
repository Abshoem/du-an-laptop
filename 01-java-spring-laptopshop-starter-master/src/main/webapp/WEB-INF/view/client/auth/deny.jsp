<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
        <!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Truy Cập Bị Hạn Chế | Hệ Thống</title>
    <!-- Bootstrap 5 -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Comic+Neue:wght@400;700&family=Poppins:wght@400;600&display=swap" rel="stylesheet">
    
    <style>
        :root {
            --primary-color: #f59e0b;
            --secondary-color: #fbbf24;
            --accent-color: #fef3c7;
        }
        
        body {
            background: radial-gradient(circle at top left, #fff3e0, #ffedd5);
            font-family: 'Comic Neue', cursive;
            height: 100vh;
            display: flex;
            align-items: center;
            position: relative;
            overflow: hidden;
        }
        
        .denied-container {
            position: relative;
            z-index: 2;
            max-width: 680px;
            margin: 0 auto;
        }

        .denied-card {
            background: rgba(255, 255, 255, 0.95);
            padding: 3rem 4rem;
            border-radius: 30px;
            box-shadow: 0 8px 32px rgba(255, 149, 0, 0.1);
            border: 3px solid var(--accent-color);
            transform: translateY(0);
            animation: cardBounce 0.8s ease;
            position: relative;
        }

        .warning-icon {
            width: 120px;
            height: 120px;
            margin: -90px auto 1rem;
            background: var(--primary-color);
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            box-shadow: 0 8px 16px rgba(245, 158, 11, 0.2);
            position: relative;
            animation: iconFloat 3s ease-in-out infinite;
        }

        .warning-icon::before {
            content: "⚠️";
            font-size: 4rem;
            filter: drop-shadow(2px 2px 2px rgba(0,0,0,0.1));
        }

        h1 {
            color: var(--primary-color);
            font-weight: 700;
            font-size: 2.8rem;
            margin-bottom: 1rem;
            text-shadow: 2px 2px 4px rgba(0,0,0,0.1);
        }

        .lead-text {
            color: #57534e;
            font-size: 1.2rem;
            line-height: 1.6;
            margin-bottom: 2.5rem;
        }

        .btn-warning-custom {
            background: linear-gradient(135deg, var(--primary-color), var(--secondary-color));
            color: white !important;
            padding: 1rem 2.5rem;
            border-radius: 15px;
            border: none;
            font-weight: 700;
            transition: all 0.3s ease;
            display: inline-flex;
            align-items: center;
            gap: 12px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            font-family: 'Poppins', sans-serif;
        }

        .btn-warning-custom:hover {
            transform: scale(1.05);
            box-shadow: 0 8px 15px rgba(245, 158, 11, 0.3);
        }

        .decorative-blob {
            position: absolute;
            width: 200px;
            height: 200px;
            background: rgba(255, 228, 179, 0.3);
            border-radius: 50%;
            filter: blur(60px);
            z-index: -1;
        }

        .blob-1 {
            top: -50px;
            left: -50px;
        }

        .blob-2 {
            bottom: -80px;
            right: -50px;
        }

        @keyframes cardBounce {
            0% { transform: translateY(-50px); opacity: 0; }
            70% { transform: translateY(10px); }
            100% { transform: translateY(0); opacity: 1; }
        }

        @keyframes iconFloat {
            0%, 100% { transform: translateY(0); }
            50% { transform: translateY(-15px); }
        }

        .cute-face {
            position: absolute;
            width: 40px;
            height: 40px;
            background: #ff6b6b;
            border-radius: 50%;
            animation: faceAppear 0.5s ease-out;
        }

        @media (max-width: 768px) {
            .denied-card {
                padding: 2rem;
                margin: 1rem;
            }
            h1 {
                font-size: 2.2rem;
            }
            .warning-icon {
                width: 100px;
                height: 100px;
                margin-top: -70px;
            }
        }
    </style>
</head>
<body>
    <div class="denied-container">
        <!-- Decorative Blobs -->
        <div class="decorative-blob blob-1"></div>
        <div class="decorative-blob blob-2"></div>
        
        <!-- Main Content -->
        <div class="denied-card text-center">
            <div class="warning-icon"></div>
            <h1>ỐI! KHÔNG THỂ TRUY CẬP</h1>
            <p class="lead-text">
                <span class="d-block mb-2">🐾 Xin lỗi nho nhỏ!</span>
                Bạn cần quyền truy cập đặc biệt để vào khu vực này. 
                Nếu bạn nghĩ đây là sự nhầm lẫn, hãy gửi yêu cầu 
                <span class="text-primary fw-bold">trợ giúp</span> 
                cho đội ngũ của chúng tôi nhé!
            </p>
            <div class="d-grid gap-2">
                <a href="/" class="btn btn-warning-custom">
                    <i class="fas fa-paw"></i>
                    Về Trang Chủ
                </a>
            </div>
        </div>
    </div>

    <!-- Scripts -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>