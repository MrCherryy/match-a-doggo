const tabLinks = document.querySelectorAll('.tabs li')

const tabFocus = () => {
  console.log(tabLinks)
  tabLinks.forEach((tabLink) => {
    tabLink.addEventListener('click', (event) => {
      event.currentTarget.classList.add('active-tab');
      console.log(event)
      if (event.path['2'].nextElementSibling) {
        event.path['2'].nextElementSibling.classList.remove('active-tab');
      } else {
        event.path['2'].previousElementSibling.classList.remove('active-tab');
      }
    });
  });
}

const initTab = () => {
  if (tabLinks) {
    tabFocus();
  }
}

export { initTab };
