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
git add .
git commit -m "Atualiza manifest PWA com icones premium"
git pull --rebase origin main
git push origin main
git add js/script.js
git commit -m "Aplica script V12.1 integrado"
git pull --rebase origin main
git push origin main
git add .
git commit -m "Corrige acessibilidade fonte A A+ A++"
git pull --rebase origin main
git push origin main
git add .
git commit -m "Aplica V12.2 Debug Master acessibilidade"
git pull --rebase origin main
git push origin main
git add .
git commit -m "Aplica V12.2 Debug Master acessibilidade"
git pull --rebase origin main
git push origin main
git add .
git commit -m "Corrige botoes A A+ A++ acessibilidade"
git pull --rebase origin main
git push origin main
git add .
git commit -m "Corrige acessibilidade por escala global"
git pull --rebase origin main
git push origin main
git add .
git commit -m "Corrige acessibilidade com classes globais V12.3"
git pull --rebase origin main
git push origin main
cd ~/portal-camara-vilabela-mt
mkdir -p assets/css assets/js assets/images assets/icons assets/docs
mv style.css assets/css/style.css
mv script.js assets/js/script.js
# Se existir a pasta imagens, move tudo para assets/images
if [ -d "imagens" ]; then   mv imagens/* assets/images/;   rmdir imagens; fi
# Atualiza caminhos nos HTML
for file in *.html; do   sed -i 's|href="style.css"|href="assets/css/style.css"|g' "$file";   sed -i 's|src="script.js"|src="assets/js/script.js"|g' "$file";   sed -i 's|imagens/|assets/images/|g' "$file"; done
# Atualiza caminho da imagem no CSS
sed -i 's|url("imagens/|url("../images/|g' assets/css/style.css
sed -i "s|url('imagens/|url('../images/|g" assets/css/style.css
git add .
git commit -m "Reestrutura pastas assets css js images"
git push
cd ~/portal-camara-vilabela-mt
# Conferir estrutura atual
find . -maxdepth 3 -type f | sort
# Criar pastas corretas
mkdir -p assets/css assets/js assets/images assets/icons assets/docs
# Corrigir pasta Icons para icons, se existir
if [ -d "assets/Icons" ]; then   mv assets/Icons/* assets/icons/;   rmdir assets/Icons; fi
# Renomear ícones PWA, se estiverem com nome alternativo
if [ -f "assets/icons/camara-icon-192.png" ]; then   mv assets/icons/camara-icon-192.png assets/icons/icon-192.png; fi
if [ -f "assets/icons/camara-icon-512.png" ]; then   mv assets/icons/camara-icon-512.png assets/icons/icon-512.png; fi
# Garantir caminhos CSS/JS nas páginas
for file in *.html; do   sed -i 's|href="style.css"|href="assets/css/style.css"|g' "$file";   sed -i 's|src="script.js"|src="assets/js/script.js"|g' "$file";   sed -i 's|imagens/|assets/images/|g' "$file"; done
# Conferir status
git status
ls -la
ls -la assets
ls -la assets/css
ls -la assets/js
ls -la assets/images
ls -la assets/icons
cd ~/portal-camara-vilabela-mt
pwd
ls -la
find . -maxdepth 3 -type f | sort
git status
git pull --rebase origin main
cd ~
ls
cd portal-camara-vilabela-mt
cd ~
ls
d portal-camara-vilabela-mt
pwd
portal-camara-vilabela-mt
cd ~
ls
git clone https://github.com/DecioCoelhoGit/portal-camara-vilabela-mt.git
cd portal-camara-vilabela-mt
pwd
cd ~
ls
cd portal-camara-vilabela-mt
pwd
git status
nano robots.txt
nano sitemap.xml
nano manifest.json
nano sw.js
git add .
git commit -m "Patch final SEO PWA producao"
git push
Settings
Pages
Deploy from branch
main
/root
Save
# Conferir status
cd ~/portal-camara-vilabela-mt
pwd
git status
git add .
git commit -m "Patch final SEO PWA producao"
git push
git pull --rebase origin main
git push
git status
cd ~/portal-camara-vilabela-mt
find . -maxdepth 3 -type f | sort
for file in *.html; do   sed -i 's|href="style.css"|href="assets/css/style.css"|g' "$file";   sed -i 's|href="./style.css"|href="assets/css/style.css"|g' "$file";   sed -i 's|href="/style.css"|href="assets/css/style.css"|g' "$file";   sed -i 's|src="script.js"|src="assets/js/script.js"|g' "$file"; done
git add .
git commit -m "Corrige caminhos css js nas paginas"
git push
ls
cd ~/portal-camara-vilabela-mt
nano css/style.css
assets/css/style.css
cd ~/portal-camara-vilabela-mt
assets/css/style.css
nano assets/css/style.css
cd ~/portal-camara-vilabela-mt
nano assets/css/style.css
git add .
git commit -m "Patch visual premium master v1"
git push
nano assets/css/style.css
git add .
git commit -m "Cinema executivo v2"
git push
cd ~/portal-camara-vilabela-mt
nano assets/css/style.css
git add .
git commit -m "V3 holografico govtech"
git push
nano assets/css/style.css
git add .
git commit -m "V4 dashboard real govtech"
git push
cd ~/portal-camara-vilabela-mt
ls -la assets/images
grep -R "brasao\|capa\|portal-og\|dashboard-bg" -n *.html assets/css/style.css
cd ~/portal-camara-vilabela-mt
for file in *.html; do   sed -i 's|imagens/brasao-camara.png|assets/images/brasao-camara.png|g' "$file";   sed -i 's|imagens/vereador-placeholder.png|assets/images/vereador-placeholder.png|g' "$file"; done
sed -i 's|url("imagens/capa-camara.jpg")|url("../images/dashboard.bg.jpg")|g' assets/css/style.css
git add .
git commit -m "Corrige caminhos do brasao e capa"
git push
cd ~/portal-camara-vilabela-mt
nano assets/css/style.css
git add .
git commit -m "V5 cinema master govtech"
git push
cd ~/portal-camara-vilabela-mt
nano assets/js/script.js
git add .
git commit -m "V6 dashboard OLAP real"
git push
git pull origin main --rebase
git push origin main
git add .
git commit -m "V7 charts executivos"
git push
nano dashboard.html
git add .
git commit -m "V7 charts executivos"
git pull origin main --rebase
git push origin main
nano dashboard.html
git add .
git commit -m "V7.1 fix script charts"
git pull origin main --rebase
git push origin main
nano dashboard.html
git add .
git commit -m "Padroniza cabecalho nas paginas do sistema"
git pull origin main --rebase
git push origin main
cd ~/portal-camara-vilabela-mt
nano assets/css/style.css
git add .
git commit -m "Fix header sistema mobile"
git pull origin main --rebase
git push origin main
cd ~/portal-camara-vilabela-mt
nano assets/css/style.css
git add .
git commit -m "Fix header sistema mobile"
git pull origin main --rebase
git push origin main
cd ~/portal-camara-vilabela-mt
nano assets/css/style.css
git add .
git commit -m "Corrige header mobile v2"
git pull origin main --rebase
git push origin main
cd ~/portal-camara-vilabela-mt
nano assets/css/style.css
git add .
git commit -m "Fix header compacto definitivo v3"
git pull origin main --rebase
git push origin main
cd ~/portal-camara-vilabela-mt
nano assets/css/style.css
git add .
git commit -m "Fix header compacto definitivo v3"
git pull origin main --rebase
git push origin main
nano dashboard.html
git add .
git commit -m "Remove menu duplicado do dashboard"
git pull origin main --rebase
git push origin main
nano dashboard.html
cd ~/portal-camara-vilabela-mt
nano assets/css/style.css
git add .
git commit -m "Ajusta dashboard e titulo mobile"
git pull origin main --rebase
git push origin main
cd ~/portal-camara-vilabela-mt
nano assets/css/style.css
git add .
git commit -m "Fix mobile header e hero v4"
git pull origin main --rebase
git push origin main
cd ~/portal-camara-vilabela-mt
nano assets/css/style.css
git add .
git commit -m "Fix definitivo mobile header dashboard"
git pull origin main --rebase
git push origin main
cd ~/portal-camara-vilabela-mt
nano assets/css/style.css
git add .
git commit -m "Fix final overflow mobile"
git pull origin main --rebase
git push origin main
cd ~
ls
cd montafacil-global 
pwd
git status
cd ~/montafacil-global
mkdir -p css js assets/holograficos assets/img assets/icons assets/logos assets/videos docs
touch index.html
touch css/style.css
touch js/script.js
touch manifest.json
touch service-worker.js
touch docs/mini-deck.md
touch docs/roteiro-apresentacao.md
touch docs/proposta-executiva.md
touch docs/roadmap.md
ls
tree
pkg install tree
git add .
git commit -m "Estrutura base da Landing Page MontaFácil Global"
git push
cd ~/montafacil-global
git status
git pull origin main
git commit -m "Organiza estrutura visual e assets da Landing Page MontaFácil Global"
git push origin main
nano index.html
nano css/style.css
nano js/script.js
nano css/style.css
git status
git add .
git commit -m "Implementa Landing Page cinematografica V1"
git push origin main
cd ~/montafacil-global
python -m http.server 8080
ls
mkdir montafacil-global
mv assets css docs js index.html manifest.json service-worker.js montafacil-global/
cd montafacil-global
ls
git init
git branch -M main
git remote add origin https://github.com/DecioCoelhoGit/montafacil-global.git
git add .
git commit -m "Estrutura oficial MontaFacil Global"
git push -u origin main
git pull origin main --allow-unrelated-histories
git pull origin main --no-rebase --allow-unrelated-histories
0
git push -u origin main
git status
git checkout --ours js/script.js
git add js/script.js
git commit -m "Resolve conflito de merge da Landing Page"
git push origin main
git checkout --ours index.html
git checkout --ours css/style.css
git checkout --ours js/script.js
git add index.html
git add css/style.css
git add js/script.js
git commit -m "Resolve conflitos da Landing Page V1"
git push origin main
git add .
git commit -m "Integração Firebase V1"
git push origin main
git pull origin main --rebase
git push origin main
git pull origin main --rebase
git push origin main
cd ~/montafacil-global
git status
git pull origin main
git pull origin master
ls
ls js
ls css
git status
cd ~/montafacil-global
git status
git pull origin main
git status
git pull origin main
git status
git add index.html css/style.css
git commit -m "Ajusta mobile landing page e rodape"
git push
git pull origin main
git add .
git commit -m "Adiciona camada holografica na landing page"
git push
git pull origin main
git add index.html css/style.css
git commit -m "Aplica patch v3 ajustes finos landing page"
git push --set-upstream origin main
git add .
git commit -m "Patch V4 acessibilidade e sistema trilíngue"
git push
git pull origin main --rebase
git push origin main
git pull origin main --rebase
git add .
git commit -m "V5 cinematic experience"
git push origin main
git add index.html css/style.css
git commit -m "Corrige logo hero e header fixo"
git pull origin main --rebase
git push origin main
git add index.html css/style.css
git commit -m "Corrige hero e adiciona imagem social sharing"
git pull origin main --rebase
git push origin main
git add css/style.css
git commit -m "Corrige hero compacto v5.3"
git pull origin main --rebase
git push origin main
git add css/style.css
git commit -m "Destrava rolagem mobile v5.4"
git pull origin main --rebase
git push origin main
git add css/style.css
git commit -m "Patch emergencial restaura rolagem mobile"
git pull origin main --rebase
git push origin main
git add index.html css/style.css
git commit -m "Adiciona header fixo tema e acessibilidade"
git pull origin main --rebase
git push origin main
git add index.html css/style.css
git commit -m "Adiciona header fixo tema e acessibilidade"
git pull origin main --rebase
git push origin main
git add index.html css/style.css
git commit -m "Adiciona header fixo tema e acessibilidade"
git pull origin main --rebase
git push origin main
git add index.html css/style.css
git commit -m "Corrige ferramentas acessibilidade e header fixo"
git pull origin main --rebase
git push origin main
git add index.html css/style.css
git commit -m "Corrige ferramentas acessibilidade e header fixo"
git pull origin main --rebase
git push origin main
git add index.html css/style.css
git commit -m "Corrige menu ancora landing page v4"
git pull origin main --rebase
git push origin main
