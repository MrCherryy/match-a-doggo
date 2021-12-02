const menu = document.querySelector('.fa-bars');
const dropdown = document.querySelector('.dropdown');

const showIt = () => {
  if (menu) {
    menu.addEventListener('click', () => {
      dropdown.classList.toggle('d-none');
    });
  }
};

const initShow = () => {
  if (dropdown) {
    showIt();
  }
};

export { initShow };
