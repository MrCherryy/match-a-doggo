
const showIt = () => {
  const menu = document.querySelector('.fa-bars');
  const logOut = document.querySelector('.log-out');
  logOut.classList.toggle('hide');
  menu.addEventListener('click', showIt);
};


const initShow = () => {
  showIt();
};

export { initShow };
