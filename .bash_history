git push origin main
git add index.html
git commit -m "Atualiza index com estrutura institucional"
git push origin main
git add .
git commit -m "Aplica style V4 cinematografico"
git push origin main
git add dashboard.html
git commit -m "Atualiza dashboard para V4 compativel"
git push origin main
pwd
ls
cd portal-prefeitura-vilabela-mt
ls
cd ~/DecioCoelhoGit
ls
find ~ -name "dashboard.html"
cp -r ~/index.html ~/DecioCoelhoGit/
cp -r ~/css ~/DecioCoelhoGit/
cp -r ~/js ~/DecioCoelhoGit/
cp -r ~/assets ~/DecioCoelhoGit/
cp -r ~/img ~/DecioCoelhoGit/
cp -r ~/robots.txt ~/DecioCoelhoGit/
cp -r ~/sitemap.xml ~/DecioCoelhoGit/
cd ~/DecioCoelhoGit
nano dashboard.html
git add .
git commit -m "Portal Prefeitura V4 completo (index + dashboard + style + js)"
git push origin main
git pull origin main --rebase
git push origin main
git add .
git commit -m "Corrige script menu tema acessibilidade"
git push origin main
git add noticias.html
git commit -m "Atualiza noticias para V4 compativel"
git push origin main
git add cultura.html
git commit -m "Cultura V4 padronizada"
git push origin main
git add turismo.html
git commit -m "Turismo V4 padronizada"
git push origin main
git add transparencia.html
git commit -m "Transparencia V4 padronizada"
git push origin main
git add gabinete.html
git commit -m "Gabinete V4 padronizada"
git push origin main
git add admin.html
git commit -m "Admin V4 padronizada"
git push origin main
git add js/script.js css/style.css
git commit -m "Aplica script V5 com tema persistente e menu premium"
git push origin main
git add .
git commit -m "Forca atualizacao cache V8 css js"
git push origin main
git add js/script.js
git commit -m "Aplica script JS V6 ultra estavel"
git push origin main
git add js/script.js
git commit -m "Aplica script JS V6 ultra estavel"
git push origin main
cd ~
find . -name "portal-prefeitura-vilabela-mt" -type d
cd ~
git clone https://github.com/DecioCoelhoGit/portal-prefeitura-vilabela-mt.git
cd portal-prefeitura-vilabela-mt
ls
cat js/script.js | head
git status
git add .
git commit -m "Corrige script V6 no projeto correto"
git push origin main
grep -n "script.js" *.html
grep -n "menuToggle\|themeToggle\|accessBtn\|accessPanel\|id=\"nav\"" *.html
git add .
git commit -m "Corrige chamada do script nas paginas V4"
git push origin main
git pull --rebase origin main
git push origin main
git add .
git commit -m "Aplica header universal V4 definitivo"
git pull --rebase origin main
git push origin maincd ~/portal-prefeitura-vilabela-mt
nano js/script.js
cd ~/portal-prefeitura-vilabela-mt
cat > index.html <<'EOF'
<!DOCTYPE html>
<html lang="pt-BR">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Portal Prefeitura Vila Bela MT</title>
  <meta name="description" content="Portal institucional da Prefeitura de Vila Bela da Santíssima Trindade - MT. Transparência, notícias, turismo, cultura e gestão pública digital.">
  <link rel="stylesheet" href="css/style.css?v=8">
</head>

<body>
  <header class="site-header">
    <a class="brand" href="index.html">
      <img src="assets/logos/vilabela-brasao-1.png" alt="Brasão Vila Bela MT">
      <span>Portal<br>Prefeitura</span>
    </a>

    <div class="header-actions">
      <button id="menuToggle" class="icon-btn" type="button">☰</button>
      <button id="themeToggle" class="icon-btn" type="button">🌙</button>
      <button id="accessBtn" class="icon-btn" type="button">♿</button>
    </div>

    <nav id="nav" class="main-nav">
      <a href="index.html">Início</a>
      <a href="dashboard.html">Dashboard</a>
      <a href="noticias.html">Notícias</a>
      <a href="cultura.html">Cultura</a>
      <a href="turismo.html">Turismo</a>
      <a href="transparencia.html">Transparência</a>
      <a href="gabinete.html">Gabinete</a>
      <a href="admin.html">Admin</a>
    </nav>
  </header>

  <div id="accessPanel" class="access-panel">
    <h2>Acessibilidade</h2>
    <button onclick="setFont(1)">A</button>
    <button onclick="setFont(1.15)">A+</button>
    <button onclick="setFont(1.3)">A++</button>
    <button onclick="setContrast()">Contraste</button>
    <button onclick="resetAccess()">Reset</button>
  </div>

  <main>
    <section class="hero">
      <div class="hero-content">
        <h1>Gestão pública digital com identidade e transparência</h1>
        <p>Um portal moderno para integrar serviços, dados públicos, turismo, cultura e governança digital.</p>
        <div class="hero-actions">
          <a href="transparencia.html" class="btn-primary">Portal da Transparência</a>
          <a href="noticias.html" class="btn-secondary">Notícias Oficiais</a>
        </div>
      </div>
    </section>

    <section class="section">
      <h2>Módulos do Portal</h2>
      <div class="grid">
        <a class="card" href="dashboard.html"><span>📊</span><h3>Dashboard</h3><p>Indicadores e visão estratégica da gestão.</p></a>
        <a class="card" href="noticias.html"><span>📰</span><h3>Notícias</h3><p>Comunicados e informações oficiais.</p></a>
        <a class="card" href="cultura.html"><span>🎭</span><h3>Cultura</h3><p>Patrimônio histórico e identidade vilabelense.</p></a>
        <a class="card" href="turismo.html"><span>🌿</span><h3>Turismo</h3><p>Roteiros e atrativos naturais.</p></a>
        <a class="card" href="transparencia.html"><span>📁</span><h3>Transparência</h3><p>Receitas, despesas e dados públicos.</p></a>
        <a class="card" href="gabinete.html"><span>🏛️</span><h3>Gabinete</h3><p>Agenda institucional e gestão executiva.</p></a>
      </div>
    </section>

    <section class="section">
      <h2>Destaques Institucionais</h2>
      <div class="grid">
        <div class="card"><h3>Portal em evolução</h3><p>Base digital escalável para serviços públicos e inteligência de dados.</p></div>
        <div class="card"><h3>Turismo estratégico</h3><p>Valorização do potencial natural e histórico do município.</p></div>
        <div class="card"><h3>Cultura viva</h3><p>Preservação da identidade vilabelense.</p></div>
      </div>
    </section>
  </main>

  <footer>
    © 2026 Prefeitura de Vila Bela da Santíssima Trindade - MT · Gestão Pública Inteligente
  </footer>

  <script src="js/script.js?v=8"></script>
</body>
</html>
EOF

cat > css/style.css <<'EOF'
*{
  box-sizing:border-box;
}

body{
  margin:0;
  font-family:Arial, Helvetica, sans-serif;
  background:#020814;
  color:#fff;
}

.site-header{
  position:sticky;
  top:0;
  z-index:9999;
  display:flex;
  align-items:center;
  justify-content:space-between;
  gap:14px;
  padding:18px;
  background:#020814;
  border-bottom:1px solid rgba(255,255,255,.15);
}

.brand{
  display:flex;
  align-items:center;
  gap:12px;
  color:#fff;
  text-decoration:none;
  font-weight:800;
  font-size:18px;
}

.brand img{
  width:58px;
}

.header-actions{
  display:flex;
  gap:8px;
}

.icon-btn{
  width:52px;
  height:52px;
  border-radius:16px;
  border:1px solid rgba(255,255,255,.28);
  background:#06101d;
  color:#fff;
  font-size:24px;
}

.main-nav{
  display:none;
  position:absolute;
  top:100%;
  left:18px;
  right:18px;
  padding:28px;
  background:#020814;
  border:1px solid rgba(255,255,255,.25);
  border-radius:28px;
  box-shadow:0 20px 80px rgba(0,0,0,.65);
}

.main-nav.active{
  display:grid;
  gap:22px;
}

.main-nav a{
  color:#35e46b;
  text-decoration:none;
  font-size:24px;
  font-weight:800;
}

.access-panel{
  display:none;
  position:fixed;
  top:120px;
  left:20px;
  right:20px;
  z-index:10000;
  padding:24px;
  background:#000;
  border:1px solid rgba(255,255,255,.35);
  border-radius:28px;
}

.access-panel.show{
  display:grid;
  gap:14px;
}

.access-panel h2{
  margin:0 0 10px;
}

.access-panel button{
  padding:18px;
  border-radius:16px;
  border:1px solid rgba(255,255,255,.35);
  background:#111;
  color:#fff;
  font-weight:800;
  font-size:18px;
}

.hero{
  min-height:72vh;
  display:flex;
  align-items:center;
  justify-content:center;
  text-align:center;
  padding:80px 22px;
  background:
    linear-gradient(rgba(2,8,20,.72),rgba(2,8,20,.92)),
    url("../assets/banners/portal-og-1.jpg") center/cover no-repeat;
}

.hero h1{
  font-size:clamp(34px,9vw,72px);
  line-height:1;
  margin:0 0 22px;
}

.hero p{
  max-width:720px;
  margin:0 auto 28px;
  color:#d8e2ee;
  font-size:18px;
}

.hero-actions{
  display:grid;
  gap:14px;
}

.btn-primary,
.btn-secondary{
  display:block;
  padding:16px 22px;
  border-radius:999px;
  text-decoration:none;
  font-weight:800;
}

.btn-primary{
  background:#22c96b;
  color:#fff;
}

.btn-secondary{
  border:1px solid rgba(255,255,255,.25);
  color:#fff;
}

.section{
  padding:56px 22px;
  max-width:1100px;
  margin:auto;
}

.section h2{
  font-size:32px;
  margin-bottom:24px;
}

.grid{
  display:grid;
  grid-template-columns:1fr;
  gap:18px;
}

.card{
  display:block;
  text-decoration:none;
  color:inherit;
  padding:24px;
  border-radius:22px;
  background:#0b1423;
  border:1px solid rgba(255,255,255,.08);
  box-shadow:0 20px 50px rgba(0,0,0,.25);
}

.card h3{
  color:#d8b84a;
  margin:12px 0 8px;
}

.card p{
  color:#cbd5e1;
}

footer{
  text-align:center;
  padding:30px 20px;
  color:#cbd5e1;
  font-size:14px;
  border-top:1px solid rgba(255,255,255,.08);
}

body.light{
  background:#f4f7fb;
  color:#07111f;
}

body.light .site-header{
  background:#fff;
  color:#07111f;
}

body.light .brand{
  color:#07111f;
}

body.light .icon-btn{
  background:#fff;
  color:#07111f;
  border-color:#d1d5db;
}

body.light .card{
  background:#fff;
  color:#07111f;
}

body.light .card p{
  color:#334155;
}

body.light footer{
  color:#07111f;
}

body.contrast{
  filter:contrast(1.35);
}

@media(min-width:768px){
  .grid{
    grid-template-columns:repeat(3,1fr);
  }

  .hero-actions{
    display:flex;
    justify-content:center;
  }
}
EOF

cat > js/script.js <<'EOF'
(function () {
  "use strict";

  function ready(fn) {
    if (document.readyState !== "loading") fn();
    else document.addEventListener("DOMContentLoaded", fn);
  }

  ready(function () {
    const menuBtn = document.getElementById("menuToggle");
    const themeBtn = document.getElementById("themeToggle");
    const accessBtn = document.getElementById("accessBtn");
    const nav = document.getElementById("nav");
    const accessPanel = document.getElementById("accessPanel");

    const savedTheme = localStorage.getItem("portal-theme");
    if (savedTheme === "light") {
      document.body.classList.add("light");
      if (themeBtn) themeBtn.textContent = "☀️";
    }

    if (menuBtn && nav) {
      menuBtn.addEventListener("click", function (e) {
        e.preventDefault();
        nav.classList.toggle("active");
        menuBtn.textContent = nav.classList.contains("active") ? "×" : "☰";
      });
    }

    if (themeBtn) {
      themeBtn.addEventListener("click", function (e) {
        e.preventDefault();
        document.body.classList.toggle("light");

        const isLight = document.body.classList.contains("light");
        localStorage.setItem("portal-theme", isLight ? "light" : "dark");
        themeBtn.textContent = isLight ? "☀️" : "🌙";
      });
    }

    if (accessBtn && accessPanel) {
      accessBtn.addEventListener("click", function (e) {
        e.preventDefault();
        accessPanel.classList.toggle("show");
      });
    }
  });

  window.setFont = function (size) {
    document.body.style.fontSize = size + "em";
    localStorage.setItem("portal-font", size);
  };

  window.setContrast = function () {
    document.body.classList.toggle("contrast");
  };

  window.resetAccess = function () {
    document.body.style.fontSize = "1em";
    document.body.classList.remove("contrast");
    localStorage.removeItem("portal-font");
  };
})();
EOF

git add .
git commit -m "Aplica pacote unico V8 funcional"
git pull --rebase origin main
git push origin main
