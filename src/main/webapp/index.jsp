<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>NexusShop · User‑friendly e‑commerce</title>

    <!-- Google Fonts & Font Awesome -->
    <link href="https://fonts.googleapis.com/css2?family=Inter:opsz,wght@14..32,400;14..32,500;14..32,600;14..32,700&family=Playfair+Display:wght@600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

    <style>
        /* ========== USER‑FRIENDLY PALETTE & GLOBALS ========== */
        :root {
            --bg: #f9fafc;
            --bg-card: #ffffff;
            --primary: #1e2b3c;
            --primary-soft: #2f4055;
            --accent: #3b82f6;       /* friendly blue */
            --accent-soft: #dbeafe;
            --accent-dark: #2563eb;
            --muted: #64748b;
            --muted-light: #94a3b8;
            --surface: #f1f5f9;
            --success: #10b981;
            --warning: #f59e0b;
            --radius: 20px;
            --radius-sm: 12px;
            --shadow: 0 8px 30px rgba(0, 0, 0, 0.04), 0 2px 6px rgba(0, 0, 0, 0.02);
            --shadow-hover: 0 20px 40px -12px rgba(0, 0, 0, 0.15);
            --transition: 0.2s ease;
            --container: 1280px;
        }

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        html {
            scroll-behavior: smooth;
        }

        body {
            font-family: 'Inter', system-ui, -apple-system, sans-serif;
            background: var(--bg);
            color: var(--primary);
            line-height: 1.5;
            -webkit-font-smoothing: antialiased;
        }

        a {
            color: inherit;
            text-decoration: none;
        }

        img {
            display: block;
            max-width: 100%;
        }

        button {
            cursor: pointer;
            font-family: inherit;
            border: none;
            background: none;
        }

        input, textarea {
            font-family: inherit;
        }

        .container {
            max-width: var(--container);
            margin: 0 auto;
            padding: 0 28px;
        }

        .sr-only {
            position: absolute;
            width: 1px;
            height: 1px;
            padding: 0;
            margin: -1px;
            overflow: hidden;
            clip: rect(0,0,0,0);
            border: 0;
        }

        /* ========== BUTTONS ========== */
        .btn {
            display: inline-flex;
            align-items: center;
            justify-content: center;
            gap: 10px;
            padding: 12px 28px;
            border-radius: 60px;
            font-weight: 600;
            font-size: 0.95rem;
            transition: var(--transition);
            border: 2px solid transparent;
            white-space: nowrap;
        }

        .btn-primary {
            background: var(--accent);
            color: #fff;
            border-color: var(--accent);
        }

        .btn-primary:hover {
            background: var(--accent-dark);
            border-color: var(--accent-dark);
            transform: translateY(-2px);
            box-shadow: 0 12px 24px -8px rgba(59, 130, 246, 0.4);
        }

        .btn-secondary {
            background: var(--primary);
            color: #fff;
            border-color: var(--primary);
        }

        .btn-secondary:hover {
            background: var(--primary-soft);
            border-color: var(--primary-soft);
            transform: translateY(-2px);
        }

        .btn-outline {
            background: transparent;
            color: var(--primary);
            border-color: #cbd5e1;
        }

        .btn-outline:hover {
            background: var(--surface);
            border-color: var(--accent);
            color: var(--accent);
        }

        .btn-ghost {
            background: rgba(255, 255, 255, 0.15);
            color: #fff;
            border-color: rgba(255, 255, 255, 0.3);
            backdrop-filter: blur(6px);
        }

        .btn-ghost:hover {
            background: rgba(255, 255, 255, 0.3);
            border-color: rgba(255, 255, 255, 0.6);
        }

        /* ========== HEADER – clean & friendly ========== */
        header {
            position: sticky;
            top: 0;
            z-index: 100;
            background: rgba(255, 255, 255, 0.85);
            backdrop-filter: blur(18px);
            -webkit-backdrop-filter: blur(18px);
            border-bottom: 1px solid #eef2f6;
        }

        .header-inner {
            display: flex;
            align-items: center;
            justify-content: space-between;
            gap: 20px;
            padding: 14px 0;
            min-height: 74px;
        }

        .brand {
            display: flex;
            align-items: center;
            gap: 10px;
            font-weight: 800;
            font-size: 1.65rem;
            letter-spacing: -0.02em;
            color: var(--primary);
            flex-shrink: 0;
        }

        .brand i {
            font-size: 1.9rem;
            color: var(--accent);
        }

        .brand .accent {
            color: var(--accent);
        }

        .main-nav ul {
            display: flex;
            gap: 6px;
            list-style: none;
            align-items: center;
        }

        .main-nav a {
            display: flex;
            align-items: center;
            gap: 8px;
            padding: 8px 16px;
            border-radius: 40px;
            font-weight: 500;
            font-size: 0.95rem;
            color: var(--muted);
            transition: var(--transition);
        }

        .main-nav a:hover,
        .main-nav a.active {
            background: var(--surface);
            color: var(--primary);
        }

        .main-nav a i {
            font-size: 1rem;
            color: var(--accent);
        }

        .header-actions {
            display: flex;
            align-items: center;
            gap: 8px;
            flex-shrink: 0;
        }

        .icon-btn {
            width: 44px;
            height: 44px;
            display: grid;
            place-items: center;
            border-radius: 50%;
            font-size: 1.2rem;
            color: var(--muted);
            transition: var(--transition);
            background: transparent;
        }

        .icon-btn:hover {
            background: var(--surface);
            color: var(--primary);
        }

        .cart-wrap {
            position: relative;
        }

        .cart-count {
            position: absolute;
            top: -2px;
            right: -2px;
            background: var(--accent);
            color: #fff;
            font-size: 0.7rem;
            font-weight: 700;
            min-width: 20px;
            height: 20px;
            border-radius: 30px;
            display: grid;
            place-items: center;
            border: 2px solid #fff;
            padding: 0 4px;
            transition: transform 0.15s;
        }

        .search-wrap {
            display: flex;
            align-items: center;
            background: var(--surface);
            border-radius: 60px;
            padding: 0 8px 0 20px;
            transition: var(--transition);
            border: 2px solid transparent;
            min-width: 230px;
        }

        .search-wrap:focus-within {
            border-color: var(--accent);
            background: #fff;
            box-shadow: 0 0 0 4px rgba(59, 130, 246, 0.1);
        }

        .search-wrap input {
            border: 0;
            background: transparent;
            outline: none;
            width: 100%;
            padding: 12px 0;
            font-size: 0.95rem;
            color: var(--primary);
        }

        .search-wrap input::placeholder {
            color: var(--muted-light);
        }

        .search-wrap button {
            padding: 10px 14px;
            color: var(--muted);
            font-size: 1rem;
            transition: var(--transition);
            border-radius: 50%;
        }

        .search-wrap button:hover {
            color: var(--accent);
            background: rgba(59, 130, 246, 0.08);
        }

        .mobile-toggle {
            display: none;
            width: 44px;
            height: 44px;
            border-radius: 50%;
            font-size: 1.3rem;
            background: var(--surface);
            color: var(--primary);
            transition: var(--transition);
        }

        .mobile-toggle:hover {
            background: var(--accent-soft);
        }

        /* mobile menu */
        #mobileMenu {
            display: none;
            background: #fff;
            border-top: 1px solid #eef2f6;
            padding: 16px 0 24px;
            box-shadow: 0 20px 30px -20px rgba(0,0,0,0.1);
        }

        #mobileMenu ul {
            list-style: none;
            display: flex;
            flex-direction: column;
            gap: 6px;
        }

        #mobileMenu a {
            display: flex;
            align-items: center;
            gap: 16px;
            padding: 14px 18px;
            border-radius: var(--radius-sm);
            font-weight: 500;
            color: var(--primary);
            transition: var(--transition);
        }

        #mobileMenu a:hover {
            background: var(--surface);
        }

        #mobileMenu a i {
            width: 24px;
            color: var(--accent);
        }

        /* ========== HERO – friendly & inviting ========== */
        .hero {
            position: relative;
            display: flex;
            align-items: center;
            min-height: 520px;
            padding: 80px 0;
            border-radius: var(--radius);
            overflow: hidden;
            margin: 28px 28px 0;
            background: linear-gradient(120deg, #1e2b3c 0%, #2f4055 100%);
        }

        .hero::before {
            content: '';
            position: absolute;
            inset: 0;
            background: url('https://images.unsplash.com/photo-1555529669-e69e7aa0ba9a?auto=format&fit=crop&w=1600&q=80') center/cover no-repeat;
            opacity: 0.35;
            z-index: 0;
        }

        .hero .container {
            position: relative;
            z-index: 2;
        }

        .hero .badge {
            display: inline-block;
            background: rgba(59, 130, 246, 0.25);
            color: #dbeafe;
            padding: 6px 20px;
            border-radius: 60px;
            font-weight: 600;
            font-size: 0.85rem;
            letter-spacing: 0.3px;
            margin-bottom: 24px;
            backdrop-filter: blur(4px);
            border: 1px solid rgba(255, 255, 255, 0.2);
        }

        .hero h1 {
            font-family: 'Playfair Display', serif;
            font-size: clamp(2.4rem, 6vw, 4rem);
            font-weight: 700;
            color: #fff;
            line-height: 1.2;
            max-width: 700px;
            margin-bottom: 16px;
        }

        .hero p {
            color: rgba(255, 255, 255, 0.85);
            font-size: 1.15rem;
            max-width: 550px;
            margin-bottom: 36px;
            line-height: 1.6;
        }

        .hero .actions {
            display: flex;
            gap: 14px;
            flex-wrap: wrap;
        }

        /* ========== SECTIONS ========== */
        .section {
            padding: 70px 0;
        }

        .section-header {
            display: flex;
            align-items: flex-end;
            justify-content: space-between;
            gap: 24px;
            margin-bottom: 44px;
            flex-wrap: wrap;
        }

        .section-header h2 {
            font-size: 2rem;
            font-weight: 700;
            letter-spacing: -0.02em;
        }

        .section-header p {
            color: var(--muted);
            font-size: 1rem;
            margin-top: 6px;
        }

        .view-all {
            font-weight: 600;
            color: var(--accent);
            display: flex;
            align-items: center;
            gap: 8px;
            font-size: 0.95rem;
            transition: var(--transition);
            white-space: nowrap;
            padding: 8px 0;
        }

        .view-all:hover {
            gap: 14px;
            color: var(--accent-dark);
        }

        /* ========== CATEGORIES ========== */
        .categories-grid {
            display: grid;
            grid-template-columns: repeat(6, 1fr);
            gap: 20px;
        }

        .cat-card {
            background: var(--bg-card);
            border-radius: var(--radius);
            padding: 28px 12px;
            text-align: center;
            box-shadow: var(--shadow);
            transition: var(--transition);
            cursor: pointer;
            border: 2px solid transparent;
        }

        .cat-card:hover {
            transform: translateY(-6px);
            box-shadow: var(--shadow-hover);
            border-color: var(--accent-soft);
        }

        .cat-card .icon-wrap {
            width: 64px;
            height: 64px;
            border-radius: 20px;
            background: var(--accent-soft);
            display: grid;
            place-items: center;
            margin: 0 auto 16px;
            font-size: 1.8rem;
            color: var(--accent);
            transition: var(--transition);
        }

        .cat-card:hover .icon-wrap {
            background: var(--accent);
            color: #fff;
        }

        .cat-card h4 {
            font-size: 1rem;
            font-weight: 600;
        }

        .cat-card .count {
            font-size: 0.85rem;
            color: var(--muted);
            margin-top: 6px;
        }

        /* ========== PRODUCTS ========== */
        .products-grid {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            gap: 28px;
        }

        .product-card {
            background: var(--bg-card);
            border-radius: var(--radius);
            overflow: hidden;
            box-shadow: var(--shadow);
            transition: var(--transition);
            display: flex;
            flex-direction: column;
            border: 2px solid transparent;
        }

        .product-card:hover {
            transform: translateY(-8px);
            box-shadow: var(--shadow-hover);
            border-color: var(--accent-soft);
        }

        .product-card .img-wrap {
            position: relative;
            overflow: hidden;
            background: var(--surface);
            aspect-ratio: 1 / 1;
        }

        .product-card .img-wrap img {
            width: 100%;
            height: 100%;
            object-fit: cover;
            transition: transform 0.4s ease;
        }

        .product-card:hover .img-wrap img {
            transform: scale(1.05);
        }

        .product-card .badge {
            position: absolute;
            top: 14px;
            left: 14px;
            background: var(--accent);
            color: #fff;
            padding: 5px 16px;
            border-radius: 40px;
            font-size: 0.7rem;
            font-weight: 700;
            letter-spacing: 0.3px;
            text-transform: uppercase;
        }

        .product-card .badge.sale {
            background: var(--warning);
            color: #1e2b3c;
        }

        .product-card .wish-btn {
            position: absolute;
            top: 14px;
            right: 14px;
            width: 40px;
            height: 40px;
            border-radius: 50%;
            background: rgba(255, 255, 255, 0.95);
            display: grid;
            place-items: center;
            font-size: 1.1rem;
            color: var(--muted);
            transition: var(--transition);
            backdrop-filter: blur(4px);
            box-shadow: 0 4px 10px rgba(0,0,0,0.05);
        }

        .product-card .wish-btn:hover {
            background: #fff;
            color: #ef4444;
            transform: scale(1.1);
        }

        .product-card .body {
            padding: 20px 18px 12px;
            flex: 1;
            display: flex;
            flex-direction: column;
            gap: 6px;
        }

        .product-card .category-tag {
            font-size: 0.75rem;
            color: var(--muted-light);
            text-transform: uppercase;
            letter-spacing: 0.4px;
            font-weight: 600;
        }

        .product-card h5 {
            font-size: 1.05rem;
            font-weight: 600;
            line-height: 1.4;
            display: -webkit-box;
            -webkit-line-clamp: 2;
            -webkit-box-orient: vertical;
            overflow: hidden;
        }

        .price-row {
            display: flex;
            align-items: baseline;
            gap: 10px;
            margin-top: 4px;
        }

        .price {
            font-weight: 700;
            font-size: 1.3rem;
            color: var(--primary);
        }

        .old-price {
            color: var(--muted-light);
            text-decoration: line-through;
            font-size: 0.95rem;
        }

        .rating {
            display: flex;
            align-items: center;
            gap: 4px;
            font-size: 0.85rem;
            color: #f59e0b;
        }

        .rating span {
            color: var(--muted);
            font-weight: 400;
        }

        .product-card .footer {
            padding: 0 18px 20px;
        }

        .add-btn {
            width: 100%;
            padding: 12px;
            border-radius: 40px;
            background: var(--primary);
            color: #fff;
            font-weight: 600;
            font-size: 0.95rem;
            transition: var(--transition);
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 10px;
            border: none;
        }

        .add-btn:hover {
            background: var(--accent);
            transform: scale(1.02);
        }

        .add-btn.added {
            background: var(--success);
        }

        /* ========== DEAL ========== */
        .deal-wrap {
            display: flex;
            gap: 0;
            background: var(--bg-card);
            border-radius: var(--radius);
            overflow: hidden;
            box-shadow: var(--shadow);
            border: 1px solid #eef2f6;
        }

        .deal-wrap .deal-img {
            flex: 0 0 48%;
            background: var(--surface);
            min-height: 360px;
        }

        .deal-wrap .deal-img img {
            width: 100%;
            height: 100%;
            object-fit: cover;
        }

        .deal-wrap .deal-content {
            flex: 1;
            padding: 48px 52px;
            display: flex;
            flex-direction: column;
            justify-content: center;
        }

        .deal-wrap .tag {
            display: inline-block;
            background: var(--warning);
            color: #1e2b3c;
            padding: 6px 18px;
            border-radius: 40px;
            font-size: 0.75rem;
            font-weight: 700;
            text-transform: uppercase;
            letter-spacing: 0.5px;
            align-self: flex-start;
            margin-bottom: 16px;
        }

        .deal-wrap h3 {
            font-size: 2rem;
            font-weight: 700;
            margin-bottom: 8px;
        }

        .deal-wrap .desc {
            color: var(--muted);
            margin-bottom: 20px;
            font-size: 1.05rem;
        }

        .price-big {
            font-size: 2.4rem;
            font-weight: 800;
            color: var(--primary);
        }

        .price-big .old {
            font-size: 1.3rem;
            font-weight: 400;
            color: var(--muted-light);
            text-decoration: line-through;
            margin-left: 12px;
        }

        .stock {
            font-size: 0.95rem;
            color: var(--muted);
            margin: 8px 0 20px;
        }

        .stock strong {
            color: var(--accent);
            font-weight: 700;
        }

        .timer-grid {
            display: flex;
            gap: 14px;
            margin: 20px 0 28px;
        }

        .timer-box {
            background: var(--primary);
            color: #fff;
            padding: 12px 16px;
            border-radius: var(--radius-sm);
            min-width: 76px;
            text-align: center;
        }

        .timer-box .num {
            font-size: 1.7rem;
            font-weight: 700;
            line-height: 1.2;
        }

        .timer-box .label {
            font-size: 0.7rem;
            opacity: 0.75;
            text-transform: uppercase;
            letter-spacing: 0.5px;
        }

        /* ========== TESTIMONIALS ========== */
        .testimonials-scroll {
            display: flex;
            gap: 24px;
            overflow-x: auto;
            padding: 10px 4px 24px;
            scroll-snap-type: x mandatory;
            -webkit-overflow-scrolling: touch;
        }

        .testimonials-scroll::-webkit-scrollbar {
            height: 6px;
        }

        .testimonials-scroll::-webkit-scrollbar-thumb {
            background: var(--accent-soft);
            border-radius: 60px;
        }

        .testimonial-card {
            flex: 0 0 360px;
            background: var(--bg-card);
            border-radius: var(--radius);
            padding: 28px;
            box-shadow: var(--shadow);
            scroll-snap-align: start;
            transition: var(--transition);
            border: 1px solid #eef2f6;
        }

        .testimonial-card:hover {
            box-shadow: var(--shadow-hover);
        }

        .testimonial-card .stars {
            color: #f59e0b;
            font-size: 1.1rem;
            letter-spacing: 3px;
            margin-bottom: 14px;
        }

        .testimonial-card blockquote {
            font-size: 1rem;
            line-height: 1.6;
            color: var(--primary);
            margin-bottom: 20px;
            font-style: normal;
        }

        .testimonial-card .author {
            display: flex;
            align-items: center;
            gap: 14px;
        }

        .avatar {
            width: 52px;
            height: 52px;
            border-radius: 50%;
            object-fit: cover;
            background: var(--surface);
        }

        .name {
            font-weight: 600;
            font-size: 0.95rem;
        }

        .role {
            font-size: 0.85rem;
            color: var(--muted);
        }

        /* ========== NEWSLETTER ========== */
        .newsletter-wrap {
            background: linear-gradient(120deg, var(--primary) 0%, var(--primary-soft) 100%);
            border-radius: var(--radius);
            padding: 56px 64px;
            color: #fff;
            display: flex;
            align-items: center;
            justify-content: space-between;
            gap: 40px;
            flex-wrap: wrap;
        }

        .newsletter-wrap .text h3 {
            font-size: 1.9rem;
            font-weight: 700;
            margin-bottom: 8px;
        }

        .newsletter-wrap .text p {
            opacity: 0.85;
            font-size: 1rem;
            max-width: 360px;
        }

        .newsletter-wrap form {
            display: flex;
            gap: 12px;
            flex-wrap: wrap;
            flex: 1;
            max-width: 520px;
        }

        .newsletter-wrap input {
            flex: 1;
            min-width: 220px;
            padding: 16px 24px;
            border-radius: 60px;
            border: 0;
            font-size: 1rem;
            background: rgba(255, 255, 255, 0.15);
            color: #fff;
            transition: var(--transition);
            outline: 2px solid transparent;
        }

        .newsletter-wrap input::placeholder {
            color: rgba(255, 255, 255, 0.6);
        }

        .newsletter-wrap input:focus {
            outline-color: var(--accent);
            background: rgba(255, 255, 255, 0.25);
        }

        #newsletterMsg {
            margin-top: 14px;
            font-size: 0.95rem;
            width: 100%;
            display: none;
        }

        /* ========== FOOTER ========== */
        footer {
            margin-top: 40px;
            padding: 60px 0 32px;
            border-top: 1px solid #eef2f6;
            background: #fff;
        }

        .footer-grid {
            display: grid;
            grid-template-columns: 2fr 1fr 1fr 1fr;
            gap: 48px;
            margin-bottom: 48px;
        }

        .footer-grid .brand-col .brand {
            font-size: 1.6rem;
            margin-bottom: 14px;
        }

        .footer-grid .brand-col p {
            color: var(--muted);
            font-size: 0.95rem;
            max-width: 300px;
            line-height: 1.7;
        }

        .socials {
            display: flex;
            gap: 12px;
            margin-top: 20px;
        }

        .socials a {
            width: 44px;
            height: 44px;
            border-radius: 50%;
            background: var(--surface);
            display: grid;
            place-items: center;
            color: var(--muted);
            transition: var(--transition);
            font-size: 1.1rem;
        }

        .socials a:hover {
            background: var(--accent);
            color: #fff;
            transform: translateY(-3px);
        }

        .col h5 {
            font-weight: 700;
            font-size: 0.95rem;
            margin-bottom: 18px;
            color: var(--primary);
            text-transform: uppercase;
            letter-spacing: 0.4px;
        }

        .col ul {
            list-style: none;
            display: flex;
            flex-direction: column;
            gap: 10px;
        }

        .col ul a {
            color: var(--muted);
            font-size: 0.95rem;
            transition: var(--transition);
        }

        .col ul a:hover {
            color: var(--accent);
        }

        .footer-bottom {
            text-align: center;
            padding-top: 28px;
            border-top: 1px solid #eef2f6;
            color: var(--muted-light);
            font-size: 0.9rem;
        }

        /* ========== RESPONSIVE ========== */
        @media (max-width: 1200px) {
            .products-grid {
                grid-template-columns: repeat(3, 1fr);
            }
            .categories-grid {
                grid-template-columns: repeat(3, 1fr);
            }
            .footer-grid {
                grid-template-columns: 1fr 1fr;
                gap: 36px;
            }
        }

        @media (max-width: 992px) {
            .hero {
                min-height: 400px;
                margin: 20px 20px 0;
                padding: 60px 0;
            }
            .hero h1 {
                font-size: 2.6rem;
            }
            .deal-wrap {
                flex-direction: column;
            }
            .deal-wrap .deal-img {
                flex: 0 0 260px;
            }
            .deal-wrap .deal-content {
                padding: 36px 32px;
            }
            .newsletter-wrap {
                padding: 40px 32px;
                flex-direction: column;
                text-align: center;
            }
            .newsletter-wrap form {
                max-width: 100%;
            }
            .search-wrap {
                min-width: 170px;
            }
        }

        @media (max-width: 768px) {
            .main-nav {
                display: none;
            }
            .mobile-toggle {
                display: grid;
                place-items: center;
            }
            .products-grid {
                grid-template-columns: repeat(2, 1fr);
                gap: 16px;
            }
            .categories-grid {
                grid-template-columns: repeat(2, 1fr);
                gap: 16px;
            }
            .hero {
                min-height: 340px;
                margin: 16px 16px 0;
                padding: 40px 0;
            }
            .hero h1 {
                font-size: 2.2rem;
            }
            .section-header h2 {
                font-size: 1.7rem;
            }
            .deal-wrap h3 {
                font-size: 1.6rem;
            }
            .price-big {
                font-size: 2rem;
            }
            .timer-box {
                min-width: 64px;
                padding: 10px 12px;
            }
            .timer-box .num {
                font-size: 1.4rem;
            }
            .footer-grid {
                grid-template-columns: 1fr;
                gap: 28px;
            }
            .header-inner {
                gap: 10px;
            }
            .brand {
                font-size: 1.3rem;
            }
            .brand i {
                font-size: 1.5rem;
            }
            .search-wrap {
                min-width: 130px;
                padding: 0 6px 0 16px;
            }
            .search-wrap input {
                font-size: 0.85rem;
                padding: 10px 0;
            }
            .icon-btn {
                width: 40px;
                height: 40px;
                font-size: 1rem;
            }
            .container {
                padding: 0 18px;
            }
            .testimonial-card {
                flex: 0 0 300px;
                padding: 22px;
            }
            .newsletter-wrap {
                padding: 32px 22px;
            }
            .newsletter-wrap .text h3 {
                font-size: 1.6rem;
            }
            .section {
                padding: 50px 0;
            }
            .hero .actions .btn {
                padding: 10px 20px;
                font-size: 0.9rem;
            }
            .deal-wrap .deal-content {
                padding: 28px 24px;
            }
        }

        @media (max-width: 480px) {
            .products-grid {
                grid-template-columns: 1fr 1fr;
                gap: 12px;
            }
            .categories-grid {
                grid-template-columns: 1fr 1fr;
                gap: 12px;
            }
            .hero {
                margin: 10px 10px 0;
                min-height: 280px;
                padding: 28px 0;
                border-radius: var(--radius-sm);
            }
            .hero h1 {
                font-size: 1.8rem;
            }
            .hero p {
                font-size: 0.95rem;
            }
            .container {
                padding: 0 14px;
            }
            .cat-card {
                padding: 18px 8px;
            }
            .cat-card .icon-wrap {
                width: 48px;
                height: 48px;
                font-size: 1.4rem;
            }
            .cat-card h4 {
                font-size: 0.85rem;
            }
            .product-card .body {
                padding: 14px 12px 8px;
            }
            .product-card h5 {
                font-size: 0.9rem;
            }
            .price {
                font-size: 1.1rem;
            }
            .add-btn {
                font-size: 0.85rem;
                padding: 10px;
            }
            .timer-box {
                min-width: 52px;
                padding: 8px 6px;
            }
            .timer-box .num {
                font-size: 1.1rem;
            }
            .timer-box .label {
                font-size: 0.6rem;
            }
            .newsletter-wrap {
                padding: 24px 16px;
            }
            .newsletter-wrap .text h3 {
                font-size: 1.4rem;
            }
            .btn {
                padding: 10px 20px;
                font-size: 0.9rem;
            }
        }
    </style>
</head>
<body>

    <!-- ===== HEADER ===== -->
    <header>
        <div class="container header-inner">
            <div style="display:flex;align-items:center;gap:14px;">
                <button class="mobile-toggle" id="mobileToggle" aria-label="Toggle menu">
                    <i class="fas fa-bars"></i>
                </button>
                <a class="brand" href="#">
                    <i class="fas fa-bag-shopping"></i>
                    <span>Nexus<span class="accent">Shop</span></span>
                </a>
            </div>

            <nav class="main-nav" id="mainNav" aria-label="Main navigation">
                <ul>
                    <li><a href="#" class="active"><i class="fas fa-house"></i> Home</a></li>
                    <li><a href="#categories"><i class="fas fa-grid-2"></i> Categories</a></li>
                    <li><a href="#products"><i class="fas fa-fire"></i> Trending</a></li>
                    <li><a href="#deals"><i class="fas fa-tag"></i> Deals</a></li>
                    <li><a href="#testimonials"><i class="fas fa-star"></i> Reviews</a></li>
                </ul>
            </nav>

            <div style="display:flex;align-items:center;gap:12px;">
                <div class="search-wrap" role="search">
                    <input type="search" id="searchInput" placeholder="Search products..." aria-label="Search" />
                    <button id="searchBtn" aria-label="Submit search"><i class="fas fa-magnifying
