/* =========================================================
   INÍCIO: SCRIPT GLOBAL
   Projeto: portal-prefeitura-vilabela-mt
   Arquivo: js/script.js
   ========================================================= */

document.addEventListener("DOMContentLoaded", () => {
  initMobileMenu();
  initThemeSystem();
});

/* =========================================================
   FINAL: SCRIPT GLOBAL
   ========================================================= */


/* =========================================================
   INÍCIO: MENU MOBILE
   ========================================================= */

function initMobileMenu() {
  const menuToggle = document.getElementById("menuToggle");
  const mainNav = document.getElementById("mainNav");

  if (!menuToggle || !mainNav) return;

  menuToggle.addEventListener("click", () => {
    mainNav.classList.toggle("open");
    menuToggle.textContent = mainNav.classList.contains("open") ? "×" : "☰";
  });

  mainNav.querySelectorAll("a").forEach((link) => {
    link.addEventListener("click", () => {
      mainNav.classList.remove("open");
      menuToggle.textContent = "☰";
    });
  });
}

/* =========================================================
   FINAL: MENU MOBILE
   ========================================================= */


/* =========================================================
   INÍCIO: SISTEMA DE TEMAS
   Temas:
   1. claro
   2. escuro
   3. contraste
   ========================================================= */

function initThemeSystem() {
  const themeButton = document.getElementById("themeButton");
  const body = document.body;

  const themes = ["light", "dark", "contrast"];
  const savedTheme = localStorage.getItem("portal-theme") || "light";

  applyTheme(savedTheme);

  if (!themeButton) return;

  themeButton.addEventListener("click", () => {
    const currentTheme = localStorage.getItem("portal-theme") || "light";
    const currentIndex = themes.indexOf(currentTheme);
    const nextTheme = themes[(currentIndex + 1) % themes.length];

    applyTheme(nextTheme);
  });

  function applyTheme(theme) {
    body.classList.remove("dark-theme", "contrast-theme");

    if (theme === "dark") {
      body.classList.add("dark-theme");
      themeButton.textContent = "☾";
      themeButton.title = "Tema escuro";
    }

    if (theme === "contrast") {
      body.classList.add("contrast-theme");
      themeButton.textContent = "◉";
      themeButton.title = "Tema contraste";
    }

    if (theme === "light") {
      themeButton.textContent = "◐";
      themeButton.title = "Tema claro";
    }

    localStorage.setItem("portal-theme", theme);
  }
}

/* =========================================================
   FINAL: SISTEMA DE TEMAS
   ========================================================= */0

// MONTAFÁCIL GLOBAL — Script V1
// Interações suaves para a Landing Page cinematográfica

document.addEventListener("DOMContentLoaded", () => {
  const topbar = document.querySelector(".topbar");
  const cards = document.querySelectorAll(".card, .flow div, .start-box");

  // Efeito de sombra no cabeçalho ao rolar
  window.addEventListener("scroll", () => {
    if (window.scrollY > 40) {
      topbar.classList.add("scrolled");
    } else {
      topbar.classList.remove("scrolled");
    }
  });

  // Animação de entrada dos cards
  const observer = new IntersectionObserver(
    (entries) => {
      entries.forEach((entry) => {
        if (entry.isIntersecting) {
          entry.target.classList.add("show");
        }
      });
    },
    {
      threshold: 0.15,
    }
  );

  cards.forEach((card) => {
    card.classList.add("hidden");
    observer.observe(card);
  });

  // Rolagem suave para links internos
  document.querySelectorAll('a[href^="#"]').forEach((link) => {
    link.addEventListener("click", (event) => {
      const targetId = link.getAttribute("href");
      const target = document.querySelector(targetId);

      if (target) {
        event.preventDefault();
        target.scrollIntoView({
          behavior: "smooth",
          block: "start",
        });
      }
    });
  });
});

0

