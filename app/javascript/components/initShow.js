const showIt = (target, drop) => {
  target.addEventListener('click', () => {
    drop.classList.toggle('d-none');
  });
};

const initShow = () => {
  const menu = document.querySelector('.fa-cog');
  const dropdown = document.querySelector('.dropdown');
  if (menu) {
    showIt(menu, dropdown);
  }
};

export { initShow };
