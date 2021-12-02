const tabFocus = (tabLinks) => {
  tabLinks.forEach((tabLink) => {
    tabLink.addEventListener('click', (event) => {
      tabLinks.forEach(tabLink => tabLink.classList.toggle('active-tab'))
    });
  });
}

const initTab = () => {
  const tabLinks = document.querySelectorAll('.tabs li')
  if (tabLinks) {
    tabFocus(tabLinks);
  }
}

export { initTab };
