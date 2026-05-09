/* ─── NAV: scroll-state & mobile burger ──────────────────────────────── */
(function () {
  const nav    = document.getElementById('nav');
  const burger = document.getElementById('burger');

  if (!nav) return;

  /* Scroll-aware nav */
  function onScroll() {
    if (window.scrollY > 20) {
      nav.classList.add('nav--scrolled');
    } else {
      nav.classList.remove('nav--scrolled');
    }
  }
  window.addEventListener('scroll', onScroll, { passive: true });
  onScroll();

  /* Mobile nav toggle */
  if (burger) {
    burger.addEventListener('click', function () {
      const links = nav.querySelector('.nav__links');
      const cta   = nav.querySelector('.nav__cta');
      if (!links) return;

      const open = links.style.display === 'flex';
      links.style.display  = open ? '' : 'flex';
      links.style.flexDirection = 'column';
      links.style.position = open ? '' : 'absolute';
      links.style.top      = open ? '' : 'var(--nav-height)';
      links.style.left     = open ? '' : '0';
      links.style.right    = open ? '' : '0';
      links.style.background = open ? '' : 'rgba(255,255,255,0.97)';
      links.style.padding  = open ? '' : '1.5rem 2rem 2rem';
      links.style.gap      = open ? '' : '1.5rem';
      links.style.borderBottom = open ? '' : '1px solid #e2ddd6';
      links.style.zIndex   = open ? '' : '99';

      if (cta) cta.style.display = open ? '' : 'none';
    });
  }

  /* Intersection-based reveal for stat counters */
  const stats = document.querySelectorAll('.stat__number');
  if (stats.length && 'IntersectionObserver' in window) {
    const io = new IntersectionObserver(function (entries) {
      entries.forEach(function (entry) {
        if (entry.isIntersecting) {
          entry.target.style.opacity = '1';
          entry.target.style.transform = 'translateY(0)';
          io.unobserve(entry.target);
        }
      });
    }, { threshold: 0.3 });

    stats.forEach(function (el) {
      el.style.opacity = '0';
      el.style.transform = 'translateY(16px)';
      el.style.transition = 'opacity 0.6s ease, transform 0.6s ease';
      io.observe(el);
    });
  }

  /* Soft fade-in for pillar cards on scroll */
  const pillars = document.querySelectorAll('.pillar, .testimonial, .treatment-card, .process__step');
  if (pillars.length && 'IntersectionObserver' in window) {
    const io2 = new IntersectionObserver(function (entries) {
      entries.forEach(function (entry, i) {
        if (entry.isIntersecting) {
          setTimeout(function () {
            entry.target.style.opacity = '1';
            entry.target.style.transform = 'translateY(0)';
          }, 0);
          io2.unobserve(entry.target);
        }
      });
    }, { threshold: 0.15 });

    pillars.forEach(function (el, i) {
      el.style.opacity = '0';
      el.style.transform = 'translateY(20px)';
      el.style.transition = 'opacity 0.55s ease ' + (i * 0.07) + 's, transform 0.55s ease ' + (i * 0.07) + 's';
      io2.observe(el);
    });
  }
})();
