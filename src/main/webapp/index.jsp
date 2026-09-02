<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>NexusShop · modern e‑commerce</title>
  <!-- Fonts & Icons -->
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Inter:opsz,wght@14..32,400;14..32,500;14..32,600;14..32,700&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
  <style>
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }

    :root {
      --bg: #f8faff;
      --card-bg: #ffffff;
      --primary: #1a2e4f;
      --primary-light: #2d4a7a;
      --accent: #4f9fff;
      --accent-soft: #d4e4ff;
      --text-muted: #5a6d86;
      --text-dark: #13273e;
      --shadow: 0 12px 30px rgba(35, 60, 110, 0.08);
      --radius: 16px;
      --radius-sm: 10px;
      --transition: 0.25s ease;
    }

    body {
      font-family: 'Inter', system-ui, -apple-system, sans-serif;
      background: var(--bg);
      color: var(--primary);
      line-height: 1.5;
    }

    .container {
      max-width: 1300px;
      margin: 0 auto;
      padding: 0 24px;
    }

    /* header */
    header {
      background: rgba(255, 255, 255, 0.75);
      backdrop-filter: blur(8px);
      border-bottom: 1px solid rgba(79, 159, 255, 0.12);
      position: sticky;
      top: 0;
      z-index: 50;
    }

    .header-inner {
      display: flex;
      align-items: center;
      justify-content: space-between;
      padding: 14px 0;
      flex-wrap: wrap;
      gap: 12px;
    }

    .brand {
      font-weight: 700;
      font-size: 1.6rem;
      letter-spacing: -0.02em;
      color: var(--primary);
      display: flex;
      align-items: center;
      gap: 4px;
    }
    .brand .accent {
      color: var(--accent);
      font-weight: 700;
    }

    .main-nav ul {
      display: flex;
      gap: 4px;
      list-style: none;
    }
    .main-nav a {
      display: inline-flex;
      align-items: center;
      gap: 8px;
      padding: 8px 16px;
      border-radius: 40px;
      font-weight: 500;
      font-size: 0.95rem;
      color: var(--primary);
      transition: var(--transition);
    }
    .main-nav a:hover {
      background: var(--accent-soft);
      color: var(--primary-light);
    }

    .search-wrap {
      display: flex;
      align-items: center;
      background: white;
      border-radius: 60px;
      padding: 4px 4px 4px 18px;
      box-shadow: 0 4px 12px rgba(35, 60, 110, 0.06);
      border: 1px solid rgba(79, 159, 255, 0.15);
      min-width: 220px;
    }
    .search-wrap input {
      border: none;
      background: transparent;
      padding: 10px 6px;
      font-size: 0.95rem;
      width: 100%;
      outline: none;
    }
    .search-wrap button {
      background: var(--accent);
      border: none;
      color: white;
      padding: 10px 16px;
      border-radius: 40px;
      cursor: pointer;
      font-size: 1rem;
      transition: var(--transition);
    }
    .search-wrap button:hover {
      background: var(--primary-light);
    }

    .header-actions {
      display: flex;
      align-items: center;
      gap: 14px;
    }
    .icon-btn {
      background: transparent;
      border: none;
      font-size: 1.2rem;
      color: var(--primary);
      transition: var(--transition);
      padding: 6px;
      border-radius: 50%;
      cursor: pointer;
      width: 42px;
      height: 42px;
      display: inline-flex;
      align-items: center;
      justify-content: center;
    }
    .icon-btn:hover {
      background: var(--accent-soft);
    }
    .cart {
      position: relative;
      font-size: 1.3rem;
    }
    .cart-count {
      position: absolute;
      top: -6px;
      right: -8px;
      background: var(--accent);
      color: white;
      font-size: 0.7rem;
      font-weight: 700;
      width: 22px;
      height: 22px;
      border-radius: 30px;
      display: grid;
      place-items: center;
    }
    .mobile-toggle {
      display: none;
      background: none;
      border: none;
      font-size: 1.6rem;
      padding: 4px 10px;
      cursor: pointer;
      color: var(--primary);
    }

    /* hero */
    .hero {
      background: linear-gradient(135deg, #dce9ff 0%, #eef4ff 100%);
      border-radius: 0 0 40px 40px;
      padding: 72px 0 64px;
      margin-bottom: 12px;
      position: relative;
      overflow: hidden;
    }
    .hero::after {
      content: '';
      position: absolute;
      right: -10%;
      top: -30%;
      width: 500px;
      height: 500px;
      background: radial-gradient(circle, rgba(79, 159, 255, 0.08) 0%, transparent 70%);
      border-radius: 50%;
      pointer-events: none;
    }
    .hero-content {
      position: relative;
      z-index: 2;
      max-width: 700px;
    }
    .hero h1 {
      font-size: 3rem;
      font-weight: 700;
      letter-spacing: -0.02em;
      line-height: 1.2;
      color: var(--primary);
    }
    .hero p {
      font-size: 1.1rem;
      color: var(--text-muted);
      margin: 18px 0 28px;
      max-width: 540px;
    }
    .btn-group {
      display: flex;
      gap: 14px;
      flex-wrap: wrap;
    }
    .btn {
      display: inline-flex;
      align-items: center;
      gap: 10px;
      padding: 14px 30px;
      border-radius: 60px;
      font-weight: 600;
      border: none;
      cursor: pointer;
      transition: var(--transition);
      font-size: 1rem;
    }
    .btn-primary {
      background: var(--accent);
      color: white;
      box-shadow: 0 8px 20px rgba(79, 159, 255, 0.3);
    }
    .btn-primary:hover {
      background: var(--primary-light);
      transform: translateY(-2px);
      box-shadow: 0 12px 28px rgba(79, 159, 255, 0.3);
    }
    .btn-outline {
      background: transparent;
      border: 2px solid var(--primary);
      color: var(--primary);
    }
    .btn-outline:hover {
      background: var(--primary);
      color: white;
    }

    /* sections */
    .section {
      padding: 48px 0 20px;
    }
    .section-header {
      display: flex;
      justify-content: space-between;
      align-items: baseline;
      flex-wrap: wrap;
      margin-bottom: 24px;
    }
    .section-header h2 {
      font-size: 1.8rem;
      font-weight: 700;
    }
    .section-header .muted {
      color: var(--text-muted);
      font-weight: 400;
    }

    /* categories */
    .grid-cats {
      display: grid;
      grid-template-columns: repeat(6, 1fr);
      gap: 18px;
    }
    .cat-card {
      background: var(--card-bg);
      border-radius: var(--radius);
      padding: 22px 10px;
      text-align: center;
      box-shadow: var(--shadow);
      transition: var(--transition);
      border: 1px solid rgba(79, 159, 255, 0.05);
      cursor: pointer;
    }
    .cat-card:hover {
      transform: translateY(-6px);
      border-color: var(--accent);
      box-shadow: 0 20px 36px rgba(79, 159, 255, 0.12);
    }
    .cat-card .icon {
      font-size: 2rem;
      color: var(--accent);
      margin-bottom: 8px;
    }
    .cat-card h4 {
      font-weight: 600;
      font-size: 1rem;
    }

    /* products */
    .grid-products {
      display: grid;
      grid-template-columns: repeat(4, 1fr);
      gap: 24px;
    }
    .product {
      background: var(--card-bg);
      border-radius: var(--radius);
      overflow: hidden;
      box-shadow: var(--shadow);
      transition: var(--transition);
      border: 1px solid rgba(0,0,0,0.02);
      display: flex;
      flex-direction: column;
    }
    .product:hover {
      transform: translateY(-5px);
      box-shadow: 0 20px 40px rgba(35, 60, 110, 0.10);
    }
    .product img {
      width: 100%;
      height: 210px;
      object-fit: cover;
      background: #f0f5ff;
    }
    .product-body {
      padding: 16px 16px 8px;
      flex: 1;
    }
    .product-body h5 {
      font-weight: 600;
      font-size: 1rem;
      margin-bottom: 4px;
    }
    .product-body .category-tag {
      font-size: 0.8rem;
      color: var(--text-muted);
      text-transform: uppercase;
      letter-spacing: 0.02em;
    }
    .price-row {
      display: flex;
      align-items: center;
      justify-content: space-between;
      margin-top: 10px;
    }
    .price {
      font-weight: 700;
      font-size: 1.2rem;
    }
    .old-price {
      color: var(--text-muted);
      text-decoration: line-through;
      font-size: 0.9rem;
      margin-left: 8px;
    }
    .rating {
      color: #f5b342;
      font-size: 0.9rem;
    }
    .product-footer {
      padding: 12px 16px 16px;
      display: flex;
      gap: 10px;
    }
    .add-btn {
      flex: 1;
      background: var(--primary);
      color: white;
      border: none;
      padding: 12px;
      border-radius: 40px;
      font-weight: 600;
      cursor: pointer;
      transition: var(--transition);
      display: flex;
      align-items: center;
      justify-content: center;
      gap: 8px;
    }
    .add-btn:hover {
      background: var(--accent);
    }
    .wish-btn {
      background: var(--bg);
      border: 1px solid #e9eff5;
      border-radius: 40px;
      width: 48px;
      cursor: pointer;
      transition: var(--transition);
      color: var(--text-muted);
    }
    .wish-btn:hover {
      background: #ffe9ef;
      color: #d14a6a;
      border-color: #fccfdb;
    }

    /* deal */
    .deal-card {
      display: flex;
      background: var(--card-bg);
      border-radius: var(--radius);
      overflow: hidden;
      box-shadow: var(--shadow);
      border: 1px solid rgba(79, 159, 255, 0.10);
    }
    .deal-card img {
      width: 45%;
      object-fit: cover;
      min-height: 280px;
    }
    .deal-content {
      padding: 32px 36px;
      flex: 1;
      display: flex;
      flex-direction: column;
      justify-content: center;
    }
    .deal-content h3 {
      font-size: 1.8rem;
      font-weight: 700;
    }
    .timer {
      display: flex;
      gap: 14px;
      margin: 18px 0;
    }
    .time-box {
      background: var(--primary);
      color: white;
      padding: 10px 12px;
      border-radius: var(--radius-sm);
      min-width: 64px;
      text-align: center;
    }
    .time-box div:first-child {
      font-size: 1.6rem;
      font-weight: 700;
    }
    .deal-price {
      font-size: 1.6rem;
      font-weight: 700;
    }

    /* testimonials */
    .testimonials {
      display: flex;
      gap: 20px;
      overflow-x: auto;
      padding: 8px 2px 16px;
    }
    .testimonial {
      min-width: 300px;
      background: var(--card-bg);
      padding: 24px;
      border-radius: var(--radius);
      box-shadow: var(--shadow);
      border: 1px solid rgba(79, 159, 255, 0.04);
    }
    .testimonial .rating {
      font-size: 1.1rem;
    }

    /* newsletter */
    .newsletter {
      background: linear-gradient(135deg, var(--primary), var(--primary-light));
      color: white;
      border-radius: var(--radius);
      padding: 48px 32px;
      text-align: center;
    }
    .newsletter h3 {
      font-size: 1.8rem;
      font-weight: 600;
    }
    .newsletter form {
      display: flex;
      justify-content: center;
      gap: 10px;
      flex-wrap: wrap;
      margin-top: 18px;
    }
    .newsletter input {
      padding: 14px 22px;
      border-radius: 60px;
      border: none;
      width: 300px;
      max-width: 100%;
      font-size: 1rem;
    }
    .newsletter .btn-primary {
      background: white;
      color: var(--primary);
      box-shadow: none;
    }
    .newsletter .btn-primary:hover {
      background: var(--accent-soft);
    }

    /* footer */
    footer {
      margin-top: 40px;
      padding: 40px 0 24px;
      border-top: 1px solid rgba(79, 159, 255, 0.08);
      color: var(--text-muted);
    }
    .footer-grid {
      display: flex;
      flex-wrap: wrap;
      justify-content: space-between;
      gap: 32px;
    }

    /* responsive */
    @media (max-width: 1100px) {
      .grid-cats { grid-template-columns: repeat(3, 1fr); }
      .grid-products { grid-template-columns: repeat(3, 1fr); }
    }
    @media (max-width: 820px) {
      .main-nav { display: none; }
      .mobile-toggle { display: inline-block; }
      .grid-products { grid-template-columns: repeat(2, 1fr); }
      .deal-card { flex-direction: column; }
      .deal-card img { width: 100%; height: 220px; }
    }
    @media (max-width: 550px) {
      .grid-cats { grid-template-columns: repeat(2, 1fr); }
      .grid-products { grid-template-columns: 1fr; }
      .hero h1 { font-size: 2.2rem; }
      .search-wrap { min-width: 140px; }
    }

    .muted { color: var(--text-muted); }
    .text-center { text-align: center; }
    .mt-8 { margin-top: 8px; }
    .gap-8 { gap: 8px; }
    .flex { display: flex; align-items: center; }
  </style>
</head>
<body>
  <header>
    <div class="container header-inner">
      <div class="flex" style="gap:10px;">
        <button class="mobile-toggle" id="mobileToggle"><i class="fas fa-bars"></i></button>
        <a class="brand" href="#">Nexus<span class="accent">Shop</span></a>
      </div>

      <nav class="main-nav">
        <ul>
          <li><a href="#"><i class="fas fa-home"></i> Home</a></li>
          <li><a href="#" id="catMenuBtn"><i class="fas fa-th-large"></i> Categories</a></li>
          <li><a href="#deals"><i class="fas fa-tag"></i> Deals</a></li>
          <li><a href="#"><i class="fas fa-fire"></i> Trending</a></li>
        </ul>
      </nav>

      <div style="display:flex;align-items:center;gap:12px;">
        <div class="search-wrap">
          <input type="text" id="searchInput" placeholder="Search ..." aria-label="search">
          <button id="searchBtn"><i class="fas fa-search"></i></button>
        </div>
        <div class="header-actions">
          <button class="icon-btn" aria-label="account"><i class="far fa-user"></i></button>
          <button class="icon-btn" aria-label="wishlist"><i class="far fa-heart"></i></button>
          <a class="cart" href="#" id="cartBtn">
            <i class="fas fa-shopping-bag"></i>
            <span class="cart-count" id="cartCount">0</span>
          </a>
        </div>
      </div>
    </div>
    <!-- mobile menu -->
    <div id="mobileMenu" style="display:none; background:white; padding:12px 24px; border-top:1px solid #eef4ff;">
      <ul style="list-style:none; display:flex; flex-direction:column; gap:8px;">
        <li><a href="#">Home</a></li>
        <li><a href="#">Categories</a></li>
        <li><a href="#deals">Deals</a></li>
        <li><a href="#">Trending</a></li>
      </ul>
    </div>
  </header>

  <main>
    <!-- hero -->
    <section class="hero">
      <div class="container hero-content">
        <h1>Discover <span style="color:var(--accent);">season</span> favorites</h1>
        <p>Curated tech, style &amp; lifestyle — all with a fresh look. Limited drops, free shipping.</p>
        <div class="btn-group">
          <button class="btn btn-primary" id="shopNow">Shop now <i class="fas fa-arrow-right"></i></button>
          <button class="btn btn-outline" id="exploreDeals">Explore deals</button>
        </div>
      </div>
    </section>

    <!-- categories -->
    <section class="section container">
      <div class="section-header">
        <h2>Shop by category</h2>
        <span class="muted">find your vibe</span>
      </div>
      <div class="grid-cats" id="categoriesGrid"></div>
    </section>

    <!-- products -->
    <section class="section container">
      <div class="section-header">
        <h2>Trending now</h2>
        <span class="muted">popular picks</span>
      </div>
      <div class="grid-products" id="productsGrid"></div>
    </section>

    <!-- deal -->
    <section id="deals" class="section container">
      <div class="section-header">
        <h2>Flash sale</h2>
        <span class="muted">limited time</span>
      </div>
      <div class="deal-card">
        <img src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=800&q=80" alt="MacBook Air">
        <div class="deal-content">
          <h3>MacBook Air M2</h3>
          <p class="muted">Supercharged by the M2 chip. Thin, light, and legendary.</p>
          <div class="timer">
            <div class="time-box"><div id="dealDays">0</div><span style="font-size:0.7rem;">days</span></div>
            <div class="time-box"><div id="dealHours">00</div><span style="font-size:0.7rem;">hrs</span></div>
            <div class="time-box"><div id="dealMinutes">00</div><span style="font-size:0.7rem;">min</span></div>
            <div class="time-box"><div id="dealSeconds">00</div><span style="font-size:0.7rem;">sec</span></div>
          </div>
          <div style="display:flex; align-items:center; gap:16px; flex-wrap:wrap;">
            <span class="deal-price">$999 <span class="old-price" style="font-size:1rem;">$1,199</span></span>
            <span style="background:#ff6b7a; color:white; padding:4px 12px; border-radius:40px; font-weight:600;">-17%</span>
          </div>
          <p class="muted" style="margin-top:6px;">Only <strong>12</strong> left — grab yours</p>
          <button class="btn btn-primary" id="buyDeal" style="margin-top:12px; align-self:flex-start;"><i class="fas fa-bolt"></i> Buy now</button>
        </div>
      </div>
    </section>

    <!-- testimonials -->
    <section class="section container">
      <div class="section-header">
        <h2>What customers say</h2>
        <span class="muted">real reviews</span>
      </div>
      <div class="testimonials">
        <div class="testimonial">
          <div class="rating">★★★★★</div>
          <p style="margin:8px 0;">“Absolutely love the design and speed. Will order again!”</p>
          <div class="flex" style="gap:10px; margin-top:6px;">
            <img src="https://images.unsplash.com/photo-1544005313-94ddf0286df2?auto=format&fit=crop&w=60&h=60&q=80" alt="avatar" style="width:44px;height:44px;border-radius:50%;object-fit:cover;">
            <div><strong>Ava Martin</strong><div class="muted" style="font-size:0.8rem;">verified buyer</div></div>
          </div>
        </div>
        <div class="testimonial">
          <div class="rating">★★★★☆</div>
          <p style="margin:8px 0;">“Super fast shipping, good quality. Very happy with my purchase.”</p>
          <div class="flex" style="gap:10px; margin-top:6px;">
            <img src="https://images.unsplash.com/photo-1546456073-6712f79251bb?auto=format&fit=crop&w=60&h=60&q=80" alt="avatar" style="width:44px;height:44px;border-radius:50%;object-fit:cover;">
            <div><strong>Michael Lee</strong><div class="muted" style="font-size:0.8rem;">frequent shopper</div></div>
          </div>
        </div>
      </div>
    </section>

    <!-- newsletter -->
    <section class="section container">
      <div class="newsletter">
        <h3>Stay in the loop</h3>
        <p style="opacity:0.85;">Get exclusive offers and first access to new arrivals.</p>
        <form id="newsletterForm">
          <input type="email" id="newsletterEmail" placeholder="Enter your email" required>
          <button class="btn btn-primary" id="subscribeBtn">Subscribe</button>
        </form>
        <div id="newsletterMsg" style="margin-top:12px; font-weight:500; display:none;"></div>
      </div>
    </section>
  </main>

  <footer>
    <div class="container footer-grid">
      <div>
        <div style="font-weight:700; font-size:1.3rem;">NexusShop</div>
        <p class="muted" style="max-width:280px; margin-top:6px;">A modern e‑commerce demo — clean, fresh, and built with care.</p>
        <div style="display:flex; gap:10px; margin-top:12px;">
          <a href="#" class="icon-btn"><i class="fab fa-facebook"></i></a>
          <a href="#" class="icon-btn"><i class="fab fa-twitter"></i></a>
          <a href="#" class="icon-btn"><i class="fab fa-instagram"></i></a>
        </div>
      </div>
      <div style="display:flex; gap:48px; flex-wrap:wrap;">
        <div><div style="font-weight:600; margin-bottom:6px;">Company</div><div class="muted" style="line-height:2;">About<br>Careers<br>Press</div></div>
        <div><div style="font-weight:600; margin-bottom:6px;">Support</div><div class="muted" style="line-height:2;">Help<br>Returns<br>Contact</div></div>
      </div>
    </div>
    <div style="text-align:center; margin-top:28px; color:var(--text-muted); font-size:0.85rem;">© <span id="year"></span> NexusShop. all rights reserved.</div>
  </footer>

  <script>
    // ---- data ----
    const CATEGORIES = [
      { id: 'phones', name: 'Smartphones', icon: 'fa-mobile-alt' },
      { id: 'laptops', name: 'Laptops', icon: 'fa-laptop' },
      { id: 'clothing', name: 'Clothing', icon: 'fa-tshirt' },
      { id: 'gadgets', name: 'Gadgets', icon: 'fa-headphones' },
      { id: 'footwear', name: 'Footwear', icon: 'fa-shoe-prints' },
      { id: 'accessories', name: 'Accessories', icon: 'fa-watch' }
    ];

    const PRODUCTS = [
      { id:1, title:'iPhone 14 Pro Max', price:1099, oldPrice:1199, rating:5, reviews:128, badge:'New', img:'https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=600&q=80', category:'phones' },
      { id:2, title:'MacBook Pro 14"', price:1999, rating:4, reviews:86, img:'https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=600&q=80', category:'laptops' },
      { id:3, title:'Apple Watch S8', price:349, oldPrice:399, rating:5, reviews:214, badge:'-25%', img:'https://images.unsplash.com/photo-1529374255404-311a2a4f1fd9?auto=format&fit=crop&w=600&q=80', category:'accessories' },
      { id:4, title:'Nike Air Max 270', price:150, rating:4, reviews:53, img:'https://images.unsplash.com/photo-1542272604-787c3835535d?auto=format&fit=crop&w=600&q=80', category:'footwear' },
      { id:5, title:'Sony A7 IV', price:2499, rating:5, reviews:42, img:'https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?auto=format&fit=crop&w=600&q=80', category:'gadgets' },
      { id:6, title:'Chanel No.5', price:120, rating:5, reviews:189, img:'https://images.unsplash.com/photo-1585386959984-a4155224a1ad?auto=format&fit=crop&w=600&q=80', category:'accessories' },
      { id:7, title:'Travel Backpack', price:79, oldPrice:99, rating:4, reviews:67, img:'https://images.unsplash.com/photo-1551232864-3f0890e580d9?auto=format&fit=crop&w=600&q=80', category:'accessories' },
      { id:8, title:'Sony WH-1000XM5', price:399, rating:5, reviews:156, img:'https://images.unsplash.com/photo-1600185365483-26d7a4cc7519?auto=format&fit=crop&w=600&q=80', category:'gadgets' }
    ];

    let cartCount = 0;
    const cartCountEl = document.getElementById('cartCount');
    const productsGrid = document.getElementById('productsGrid');
    const categoriesGrid = document.getElementById('categoriesGrid');
    const searchInput = document.getElementById('searchInput');

    function escapeHtml(str) {
      return String(str).replace(/[&<>"']/g, s => ({'&':'&amp;','<':'&lt;','>':'&gt;','"':'&quot;',"'":'&#39;'}[s]));
    }

    function renderCategories() {
      categoriesGrid.innerHTML = '';
      CATEGORIES.forEach(c => {
        const div = document.createElement('div');
        div.className = 'cat-card';
        div.innerHTML = `<div class="icon"><i class="fas ${c.icon}"></i></div><h4>${c.name}</h4><div class="muted" style="font-size:0.75rem;">explore</div>`;
        div.addEventListener('click', ()=> {
          searchInput.value = c.name;
          filterProducts(c.name);
          document.getElementById('productsGrid').scrollIntoView({ behavior:'smooth', block:'start' });
        });
        categoriesGrid.appendChild(div);
      });
    }

    function renderProducts(list) {
      productsGrid.innerHTML = '';
      list.forEach(p => {
        const el = document.createElement('div');
        el.className = 'product';
        el.innerHTML = `
          <img src="${p.img}" alt="${escapeHtml(p.title)}" loading="lazy">
          <div class="product-body">
            <h5>${escapeHtml(p.title)}</h5>
            <div class="category-tag">${p.category}</div>
            <div class="price-row">
              <div><span class="price">$${p.price.toLocaleString()}</span> ${p.oldPrice ? `<span class="old-price">$${p.oldPrice.toLocaleString()}</span>` : ''}</div>
              <div class="rating">${'★'.repeat(Math.round(p.rating))} <span style="color:var(--text-muted);font-size:0.7rem;">(${p.reviews})</span></div>
            </div>
          </div>
          <div class="product-footer">
            <button class="add-btn" data-id="${p.id}"><i class="fas fa-cart-plus"></i> Add</button>
            <button class="wish-btn"><i class="far fa-heart"></i></button>
          </div>
        `;
        productsGrid.appendChild(el);
      });
      document.querySelectorAll('.add-btn').forEach(btn => {
        btn.addEventListener('click', (e) => {
          const id = Number(btn.dataset.id);
          addToCart(id);
          const orig = btn.innerHTML;
          btn.innerHTML = '<i class="fas fa-check"></i> Added';
          btn.style.background = '#4f9fff';
          setTimeout(() => { btn.innerHTML = orig; btn.style.background = ''; }, 1200);
        });
      });
    }

    function addToCart(id) {
      const product = PRODUCTS.find(p => p.id === id);
      if (!product) return;
      cartCount++;
      cartCountEl.textContent = cartCount;
    }

    function filterProducts(query) {
      const q = query.trim().toLowerCase();
      if (!q) { renderProducts(PRODUCTS); return; }
      const filtered = PRODUCTS.filter(p => p.title.toLowerCase().includes(q) || p.category.toLowerCase().includes(q));
      renderProducts(filtered);
    }

    // ---- events ----
    document.getElementById('searchBtn').addEventListener('click', ()=> filterProducts(searchInput.value));
    searchInput.addEventListener('keydown', (e)=> { if (e.key === 'Enter') filterProducts(e.target.value); });

    document.getElementById('mobileToggle').addEventListener('click', ()=> {
      const menu = document.getElementById('mobileMenu');
      menu.style.display = menu.style.display === 'block' ? 'none' : 'block';
    });

    document.getElementById('shopNow').addEventListener('click', ()=> {
      document.getElementById('productsGrid').scrollIntoView({ behavior:'smooth', block:'start' });
    });
    document.getElementById('exploreDeals').addEventListener('click', ()=> {
      document.getElementById('deals').scrollIntoView({ behavior:'smooth' });
    });
    document.getElementById('buyDeal').addEventListener('click', ()=> {
      cartCount++;
      cartCountEl.textContent = cartCount;
      alert('🔥 Deal added to cart!');
    });

    // newsletter
    document.getElementById('newsletterForm').addEventListener('submit', (e) => {
      e.preventDefault();
      const email = document.getElementById('newsletterEmail').value.trim();
      const msg = document.getElementById('newsletterMsg');
      if (!email || !email.includes('@')) {
        msg.style.display = 'block';
        msg.textContent = 'Please enter a valid email.';
        msg.style.color = '#ffd0d0';
        return;
      }
      msg.style.display = 'block';
      msg.textContent = '✅ You’re in! Thanks for subscribing.';
      msg.style.color = '#c7e0ff';
      document.getElementById('newsletterEmail').value = '';
      setTimeout(()=> msg.style.display = 'none', 3200);
    });

    // countdown
    (function() {
      const target = new Date(Date.now() + (24 * 3600 + 36 * 60) * 1000);
     
