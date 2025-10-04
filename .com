<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Clever Digital Agency</title>
  <style>
    body {
      margin: 0;
      font-family: 'Segoe UI', sans-serif;
      background-color: #0f0f0f;
      color: #ffffff;
    }

    .hero {
      display: flex;
      flex-direction: column;
      justify-content: center;
      align-items: center;
      text-align: center;
      height: 100vh;
      padding: 0 20px;
      background: linear-gradient(135deg, #0f0f0f 60%, #1a1a1a);
    }

    .hero h1 {
      font-size: 3rem;
      margin-bottom: 20px;
      color: #00ffe0;
    }

    .hero p {
      font-size: 1.2rem;
      max-width: 600px;
      margin-bottom: 30px;
      color: #cccccc;
    }

    .hero-buttons {
      display: flex;
      gap: 15px;
      flex-wrap: wrap;
      justify-content: center;
    }

    .hero-buttons a {
      text-decoration: none;
      padding: 12px 24px;
      border-radius: 6px;
      font-weight: bold;
      transition: background 0.3s ease;
    }

    .btn-primary {
      background-color: #00ffe0;
      color: #0f0f0f;
    }

    .btn-primary:hover {
      background-color: #00d6c0;
    }

    .btn-secondary {
      background-color: transparent;
      border: 2px solid #00ffe0;
      color: #00ffe0;
    }

    .btn-secondary:hover {
      background-color: #00ffe0;
      color: #0f0f0f;
    }
  </style>
</head>
<body>
  <section class="hero">
    <h1>We Build Stores That Sell — Globally</h1>
    <p>Clever Digital Agency delivers innovative strategies to boost traffic, sales, and growth across 15 countries.</p>
    <div class="hero-buttons">
      <a href="#get-started" class="btn-primary">Get Started</a>
      <a href="#analyzer" class="btn-secondary">Analyze My Website</a>
    </div>
  </section>
</body>
</html>
