  overflow-x:hidden !important;
}

.site-header{
  position:sticky !important;
  top:0 !important;
  z-index:2147483647 !important;
  width:100% !important;
  min-height:72px !important;
  background:rgba(255,255,255,.96) !important;
  backdrop-filter:blur(18px) !important;
  -webkit-backdrop-filter:blur(18px) !important;
}

body.dark .site-header,
body.contrast .site-header{
  background:rgba(2,6,18,.96) !important;
}

.brand img{
  object-fit:contain !important;
  background:#fff !important;
  padding:3px !important;
  border-radius:4px !important;
}

body.contrast .hero,
body.contrast .card{
  background:#000 !important;
  border:2px solid #fff !important;
}

body.contrast .hero-title,
body.contrast .section-title,
body.contrast .card h3{
  color:#ffff00 !important;
}

body.contrast .btn-primary{
  background:#ffff00 !important;
  color:#000 !important;
  border-color:#ffff00 !important;
}

@media(max-width:480px){
  body{ padding-top:0 !important; }

  .site-header{
    display:flex !important;
    align-items:center !important;
    justify-content:space-between !important;
    gap:8px !important;
    padding:10px 12px !important;
  }

  .brand{
    min-width:0 !important;
    flex:1 !important;
  }

  .brand img{
    width:44px !important;
    height:44px !important;
  }

  .brand-title{
    font-size:14px !important;
    line-height:1.05 !important;
  }

  .header-actions{
    display:flex !important;
    gap:6px !important;
    flex-shrink:0 !important;
  }

  .icon-btn{
    width:42px !important;
    height:42px !important;
    font-size:20px !important;
  }
}
EOF

git add .
git commit -m "Patch V9.2 ajuste final header brasao contraste"
git pull --rebase origin main
git push origin main
cd ~/portal-prefeitura-vilabela-mt
sed -i 's|assets/logos/vilabela-brasao-1-preta.png|assets/logos/vilabela-brasao-1-transparente.png|g' *.html
sed -i 's|assets/logos/vilabela-brasao-1.png|assets/logos/vilabela-brasao-1-transparente.png|g' *.html
cat >> css/style.css <<'EOF'

/* PATCH V9.3 — HEADER FIXO + ACESSIBILIDADE */
.site-header{
  position:fixed !important;
  top:0 !important;
  left:0 !important;
  right:0 !important;
  z-index:999999 !important;
  background:#020817 !important;
  border-bottom:1px solid rgba(255,255,255,.12) !important;
}

body.light .site-header{
  background:#ffffff !important;
}

body.dark .site-header,
body.contrast .site-header{
  background:#020817 !important;
}

main{
  padding-top:82px !important;
}

body.font-normal{ font-size:16px !important; }
body.font-large{ font-size:18px !important; }
body.font-xlarge{ font-size:20px !important; }

.access-panel{
  max-width:calc(100vw - 28px) !important;
  left:14px !important;
  right:14px !important;
  transform:none !important;
  overflow:hidden !important;
}

.access-panel button{
  width:100% !important;
}

body.contrast{
  background:#000 !important;
  color:#fff !important;
}

body.contrast .site-header,
body.contrast .card,
body.contrast .module-card,
body.contrast .highlight-card{
  background:#000 !important;
  border:2px solid #fff !important;
}

body.contrast h1,
body.contrast h2,
body.contrast h3,
body.contrast .brand-title,
body.contrast .card-title{
  color:#ffff00 !important;
}

body.contrast p,
body.contrast span,
body.contrast small{
  color:#fff !important;
}
EOF

cat >> js/script.js <<'EOF'

/* PATCH V9.3 — FONTE ACESSÍVEL */
window.setFont = function(scale){
  document.body.classList.remove("font-normal","font-large","font-xlarge");
  if(scale === 1.15){
    document.body.classList.add("font-large");
    localStorage.setItem("portal-font-class","font-large");
  }else if(scale === 1.3){
    document.body.classList.add("font-xlarge");
    localStorage.setItem("portal-font-class","font-xlarge");
  }else{
    document.body.classList.add("font-normal");
    localStorage.setItem("portal-font-class","font-normal");
  }
};

window.resetAccess = function(){
  document.body.classList.remove("font-normal","font-large","font-xlarge","contrast");
  document.body.classList.add("font-normal");
  localStorage.removeItem("portal-font-class");
};

document.addEventListener("DOMContentLoaded", function(){
  const savedFont = localStorage.getItem("portal-font-class");
  if(savedFont){
    document.body.classList.add(savedFont);
  }
});
EOF

git add .
git commit -m "Patch V9.3 header fixo brasao transparente acessibilidade"
git pull --rebase origin main
git push origin main
cd ~/portal-prefeitura-vilabela-mt
# 1. Brasão transparente em todas as páginas
grep -rl "vilabela-brasao" *.html | xargs sed -i 's|assets/logos/vilabela-brasao-1-preta.png|assets/logos/vilabela-brasao-1-transparente.png|g'
# 2. Corrigir cabeçalho fixo e acessibilidade
cat >> css/style.css <<'EOF'

/* PATCH V9.4 FINAL */
html, body{
  width:100%;
  max-width:100%;
  overflow-x:hidden !important;
}

.site-header,
.header,
.topbar{
  position:sticky !important;
  top:0 !important;
  z-index:999999 !important;
  background:#020817 !important;
  backdrop-filter:blur(18px);
}

body.light .site-header,
body.light .header,
body.light .topbar{
  background:#ffffff !important;
}

body.contrast .site-header,
body.contrast .header,
body.contrast .topbar{
  background:#000 !important;
  border-bottom:2px solid #fff !important;
}

main{
  position:relative;
  z-index:1;
}

/* Acessibilidade */
body.font-a{
  font-size:16px !important;
}

body.font-ap{
  font-size:18px !important;
}

body.font-app{
  font-size:20px !important;
}

body.font-ap h1,
body.font-app h1{
  line-height:1.08 !important;
}

.access-panel{
  max-width:calc(100vw - 32px) !important;
  left:16px !important;
  right:16px !important;
  transform:none !important;
  z-index:999998 !important;
}

.access-panel button{
  min-height:48px !important;
}
EOF

# 3. Trocar funções de acessibilidade no JS
cat >> js/script.js <<'EOF'

/* PATCH V9.4 FINAL — Acessibilidade */
window.setFont = function(size){
  document.body.classList.remove("font-a","font-ap","font-app");

  if(size === 1 || size === "1"){
    document.body.classList.add("font-a");
    localStorage.setItem("portal-font-size","font-a");
  }

  if(size === 1.15 || size === "1.15"){
    document.body.classList.add("font-ap");
    localStorage.setItem("portal-font-size","font-ap");
  }

  if(size === 1.3 || size === "1.3"){
    document.body.classList.add("font-app");
    localStorage.setItem("portal-font-size","font-app");
  }
};

window.resetAccess = function(){
  document.body.classList.remove("font-a","font-ap","font-app","contrast");
  localStorage.removeItem("portal-font-size");
};

document.addEventListener("DOMContentLoaded", function(){
  const saved = localStorage.getItem("portal-font-size");
  if(saved){
    document.body.classList.add(saved);
  }
});
EOF

# 4. Publicar
git add .
git commit -m "Patch V9.4 final brasao header acessibilidade"
git pull --rebase origin main
git push origin main
cd ~/portal-prefeitura-vilabela-mt
cat >> css/style.css <<'EOF'

/* PATCH V9.5 FINAL — HEADER FIXO + ACESSIBILIDADE REAL */
body{
  --font-boost: 1;
}

body.font-a{ --font-boost: 1; }
body.font-ap{ --font-boost: 1.14; }
body.font-app{ --font-boost: 1.28; }

body.font-ap,
body.font-app{
  font-size: calc(16px * var(--font-boost)) !important;
}

body.font-ap p,
body.font-ap a,
body.font-ap button,
body.font-ap li,
body.font-ap span,
body.font-app p,
body.font-app a,
body.font-app button,
body.font-app li,
body.font-app span{
  font-size: calc(1em * var(--font-boost)) !important;
}

body.font-ap h1{ font-size: clamp(2.2rem, 10vw, 4.8rem) !important; }
body.font-app h1{ font-size: clamp(2.5rem, 11vw, 5.4rem) !important; }

body.font-ap h2{ font-size: clamp(1.8rem, 7vw, 3.2rem) !important; }
body.font-app h2{ font-size: clamp(2rem, 8vw, 3.6rem) !important; }

/* Cabeçalho realmente fixo no mobile */
.site-header,
header.site-header,
.header,
.topbar{
  position: fixed !important;
  top: 0 !important;
  left: 0 !important;
  right: 0 !important;
  width: 100% !important;
  z-index: 2147483647 !important;
  background: #020817 !important;
}

body.light .site-header,
body.light header.site-header,
body.light .header,
body.light .topbar{
  background: #ffffff !important;
}

body{
  padding-top: 96px !important;
}

@media(max-width: 600px){
  body{
    padding-top: 88px !important;
  }
}

/* Painel acessibilidade sem duplicar/estourar */
.access-panel{
  position: fixed !important;
  top: 110px !important;
  left: 16px !important;
  right: 16px !important;
  width: auto !important;
  max-width: none !important;
  max-height: calc(100vh - 140px) !important;
  overflow-y: auto !important;
  z-index: 2147483646 !important;
}

/* Contraste mais forte */
body.contrast{
  background:#000 !important;
  color:#fff !important;
}

body.contrast *{
  text-shadow:none !important;
}

body.contrast h1,
body.contrast h2,
body.contrast h3,
body.contrast .section-title{
  color:#ffff00 !important;
}

body.contrast .card,
body.contrast .module-card,
body.contrast .glass-card{
  background:#000 !important;
  border:2px solid #fff !important;
  color:#fff !important;
}

body.contrast .btn,
body.contrast button{
  background:#ffff00 !important;
  color:#000 !important;
  border:2px solid #fff !important;
}
EOF

cat >> js/script.js <<'EOF'

/* PATCH V9.5 FINAL — troca direta dos botões A */
document.addEventListener("DOMContentLoaded", function(){
  document.querySelectorAll("button, .access-panel button").forEach(function(btn){
    const txt = (btn.textContent || "").trim();

    if(txt === "A"){
      btn.onclick = function(e){
        e.preventDefault();
        document.body.classList.remove("font-ap","font-app");
        document.body.classList.add("font-a");
        localStorage.setItem("portal-font-size","font-a");
      };
    }

    if(txt === "A+"){
      btn.onclick = function(e){
        e.preventDefault();
        document.body.classList.remove("font-a","font-app");
        document.body.classList.add("font-ap");
        localStorage.setItem("portal-font-size","font-ap");
      };
    }

    if(txt === "A++"){
      btn.onclick = function(e){
        e.preventDefault();
        document.body.classList.remove("font-a","font-ap");
        document.body.classList.add("font-app");
        localStorage.setItem("portal-font-size","font-app");
      };
    }
  });
});
EOF

git add .
git commit -m "Patch V9.5 final header fixo acessibilidade real"
git pull --rebase origin main
git push origin main
cd ~/portal-prefeitura-vilabela-mt
find . -name "*.html" -exec sed -i 's|assets/logos/vilabela-brasao-1[^"]*|assets/logos/vilabela-brasao-1-transparente.png?v=10|g' {} +
<meta http-equiv="Cache-Control" content="no-cache, no-store, must-revalidate">
<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="Expires" content="0">
<link rel="stylesheet" href="css/style.css?v=10">
<script defer src="js/script.js?v=10"></script>
document.addEventListener("DOMContentLoaded", function(){
});
// Força sincronização do tema em TODOS navegadores
(function(){
})();
// Limpa versões antigas automaticamente
(function(){
})();
nano js/script.js
git add .
git commit -m "Patch V10 aplicado corretamente"
git push
nano manifest.json
git add .
git commit -m "V11 Portal PWA instalavel"
git push origin main
git pull --rebase origin main
git push origin main
git status
git push origin main
cd ~/portal-prefeitura-vilabela-mt
mkdir -p assets/icons
ls assets/icons
git pull --rebase origin main
ls assets/icons
nano manifest.json
git add .
git commit -m "Atualiza manifest PWA com icones premium"
git pull --rebase origin main
git push origin main
