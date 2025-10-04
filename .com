<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <title>Clever Digital Agency — Header (Dark Theme)</title>
  <meta name="description" content="Clever Digital Agency header navigation — dark theme, responsive, accessible." />
  <style>
    /* Root variables */
    :root{
      --bg:#0b0f12; /* deep dark background */
      --panel:#0f1720; /* slightly lighter */
      --muted:#9aa4ae;
      --text:#e6eef6;
      --accent:#FF4500; /* orange red */
      --glass: rgba(255,255,255,0.03);
      --nav-height:72px;
      --shadow: 0 6px 18px rgba(2,6,23,0.6);
    }

    /* Base reset */
    *{box-sizing:border-box}
    html,body{height:100%}
    body{
      margin:0;
      font-family:Inter, ui-sans-serif, system-ui, -apple-system, "Segoe UI", Roboto, "Helvetica Neue", Arial;
      background: linear-gradient(180deg,var(--bg) 0%, #071018 100%);
      color:var(--text);
      -webkit-font-smoothing:antialiased;
      -moz-osx-font-smoothing:grayscale;
      line-height:1.3;
    }

    /* Header */
    .site-header{
      position:sticky;
      top:0;
      z-index:60;
      backdrop-filter: blur(6px);
      background: linear-gradient(180deg, rgba(10,14,17,0.6), rgba(10,14,17,0.35));
      border-bottom: 1px solid rgba(255,255,255,0.03);
      box-shadow: var(--shadow);
    }

    .nav-container{
      max-width:1200px;
      margin:0 auto;
      height:var(--nav-height);
      display:flex;
      align-items:center;
      justify-content:space-between;
      padding:12px 20px;
      gap:18px;
    }

    /* Logo */
    .brand{
      display:flex;
      align-items:center;
      gap:12px;
      text-decoration:none;
      color:var(--text);
    }
    .brand .logo-wrap{
      width:48px;height:48px;display:inline-grid;place-items:center;border-radius:12px;background:linear-gradient(135deg,var(--panel), #0b1a20);box-shadow: 0 4px 10px rgba(0,0,0,0.6);
    }
    .brand svg{display:block}
    .brand h1{font-size:16px;margin:0;font-weight:700;letter-spacing:0.2px}
    .brand p{margin:0;font-size:12px;color:var(--muted)}

    /* Navigation */
    .nav-links{display:flex;align-items:center;gap:14px}
    .nav-links a{
      color:var(--muted);
      text-decoration:none;
      padding:8px 10px;border-radius:8px;font-size:15px;font-weight:600;
      transition:all .16s ease;
    }
    .nav-links a:hover, .nav-links a:focus{
      color:var(--text);
      background:var(--glass);
      outline:none;
      transform:translateY(-1px);
      box-shadow: 0 6px 14px rgba(0,0,0,0.45);
    }

    .nav-cta{display:flex;align-items:center;gap:12px}
    .btn{
      display:inline-flex;align-items:center;gap:10px;padding:10px 16px;border-radius:10px;font-weight:700;text-decoration:none;border:1px solid rgba(255,255,255,0.04);
      box-shadow: 0 4px 10px rgba(0,0,0,0.5);cursor:pointer;
      transition:transform .14s ease, box-shadow .14s ease;
    }
    .btn-primary{
      background: linear-gradient(90deg,var(--accent), #ff6b3b);
      color:white;border:none;
    }
    .btn-primary:hover{transform:translateY(-3px);box-shadow: 0 10px 30px rgba(255,69,0,0.14)}
    .btn-ghost{background:transparent;color:var(--muted)}

    /* Mobile hamburger */
    .hamburger{
      display:none;width:44px;height:44px;border-radius:10px;align-items:center;justify-content:center;background:transparent;border:none;color:var(--muted);cursor:pointer
    }
    .hamburger:focus{outline:2px solid rgba(255,255,255,0.06)}

    /* Mobile menu panel */
    .mobile-panel{
      display:none;position:absolute;inset:auto 16px 16px 16px;background:linear-gradient(180deg, rgba(12,16,20,0.98), rgba(12,16,20,0.96));padding:16px;border-radius:12px;border:1px solid rgba(255,255,255,0.03);box-shadow:var(--shadow);
    }
    .mobile-panel a{display:block;padding:10px 12px;border-radius:8px;color:var(--muted);text-decoration:none}
    .mobile-panel a:hover{color:var(--text);background:var(--glass)}

    /* Responsive */
    @media (max-width: 940px){
      .nav-links{display:none}
      .hamburger{display:flex}
    }

    @media (max-width: 420px){
      .brand h1{font-size:14px}
      .brand p{display:none}
    }

    /* Focus visible helpers */
    a:focus{outline:2px dashed rgba(255,69,0,0.14);outline-offset:4px}
  </style>
</head>
<body>

  <header class="site-header" role="banner">
    <div class="nav-container">

      <!-- Brand / Logo -->
      <a href="#" class="brand" aria-label="Clever Digital Agency home">
        <span class="logo-wrap" aria-hidden="true">
          <!-- Minimal SVG mark -->
          <svg width="34" height="34" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg" aria-hidden>
            <rect x="1" y="1" width="22" height="22" rx="5" fill="url(#g)" />
            <defs>
              <linearGradient id="g" x1="0" x2="1" y1="0" y2="1">
                <stop offset="0" stop-color="#0ea5a3" />
                <stop offset="1" stop-color="#FF4500" />
              </linearGradient>
            </defs>
            <path d="M6 16L10.5 9L15 16" stroke="white" stroke-width="1.4" stroke-linecap="round" stroke-linejoin="round" opacity="0.95"/>
          </svg>
        </span>
        <div>
          <h1>Clever Digital Agency</h1>
          <p>Shopify Plus • Web3 • Growth</p>
        </div>
      </a>

      <!-- Desktop navigation -->
      <nav class="nav-links" role="navigation" aria-label="Primary Navigation">
        <a href="#home">Home</a>
        <a href="#services">Services</a>
        <a href="#portfolio">Portfolio</a>
        <a href="#methodology">Methodology</a>
        <a href="#about">About Us</a>
        <a href="#analyzer">Website Analyzer</a>
        <a href="#contact">Contact</a>
      </nav>

      <!-- CTA + Hamburger -->
      <div class="nav-cta">
        <a class="btn btn-ghost" href="#" aria-label="Get started with us">Get Started</a>
        <a class="btn btn-primary" href="#book" aria-label="Book a strategy call">Book Strategy Call</a>

        <button class="hamburger" id="hamburgerBtn" aria-expanded="false" aria-controls="mobileMenu" aria-label="Open menu">
          <!-- simple burger icon -->
          <svg width="20" height="20" viewBox="0 0 24 24" fill="none" aria-hidden>
            <path d="M4 7H20" stroke="currentColor" stroke-width="1.6" stroke-linecap="round"/>
            <path d="M4 12H20" stroke="currentColor" stroke-width="1.6" stroke-linecap="round"/>
            <path d="M4 17H20" stroke="currentColor" stroke-width="1.6" stroke-linecap="round"/>
          </svg>
        </button>
      </div>

    </div>

    <!-- Mobile slide-down panel (positioned under header) -->
    <div id="mobileMenu" class="mobile-panel" role="menu" aria-hidden="true">
      <a href="#home" role="menuitem">Home</a>
      <a href="#services" role="menuitem">Services</a>
      <a href="#portfolio" role="menuitem">Portfolio</a>
      <a href="#methodology" role="menuitem">Methodology</a>
      <a href="#about" role="menuitem">About Us</a>
      <a href="#analyzer" role="menuitem">Website Analyzer</a>
      <a href="#contact" role="menuitem">Contact</a>
      <div style="height:8px"></div>
      <a class="btn btn-primary" href="#book" role="menuitem" style="display:block;text-align:center">Book Strategy Call</a>
    </div>
  </header>

  <main style="padding:48px 20px;max-width:1200px;margin:0 auto;color:var(--muted)">
    <p>This file contains the header/navigation markup for a dark-themed, responsive, and accessible header. Replace links and SVG with your real assets when integrating.</p>
  </main>

  <script>
    // Mobile menu toggle with accessibility
    (function(){
      const btn = document.getElementById('hamburgerBtn');
      const panel = document.getElementById('mobileMenu');
      let open = false;

      function openMenu(){
        panel.style.display = 'block';
        panel.setAttribute('aria-hidden','false');
        btn.setAttribute('aria-expanded','true');
        open = true;
      }
      function closeMenu(){
        panel.style.display = 'none';
        panel.setAttribute('aria-hidden','true');
        btn.setAttribute('aria-expanded','false');
        open = false;
      }

      btn.addEventListener('click', function(e){
        e.stopPropagation();
        open ? closeMenu() : openMenu();
      });

      // Close on outside click
      document.addEventListener('click', function(e){
        if(!open) return;
        if(!panel.contains(e.target) && !btn.contains(e.target)) closeMenu();
      });

      // Close on escape
      document.addEventListener('keydown', function(e){
        if(e.key === 'Escape' && open) closeMenu();
      });

    })();
  </script>
</body>
</html>
