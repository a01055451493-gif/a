(() => {
  // Banner pager: "n/total" follows the snapped slide
  const track = document.getElementById('track');
  const pager = document.getElementById('pager');
  const slides = track.children;
  const step = () => slides[0].offsetWidth + parseFloat(getComputedStyle(track).columnGap || 28);
  track.addEventListener('scroll', () => {
    const i = Math.min(slides.length - 1, Math.max(0, Math.round(track.scrollLeft / step())));
    pager.textContent = `${i + 1}/${slides.length}`;
  }, { passive: true });

  // Category tabs: the underline image moves to the selected tab
  const tabs = [...document.querySelectorAll('.tab')];
  const line = document.querySelector('.tab__line');
  tabs.forEach(tab => tab.addEventListener('click', () => {
    tabs.forEach(t => { t.classList.toggle('is-active', t === tab); t.setAttribute('aria-selected', t === tab); });
    tab.appendChild(line);
  }));
})();
