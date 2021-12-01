
const showIt = () => {
  const menu = document.querySelector('.fa-bars');
  const logOuts = document.querySelectorAll('.log-out');

  logOuts.forEach((logOut) => {
    logOut.classList.toggle('hide');
  });

  if (menu) {
  menu.addEventListener('click', showIt);
  }
};


const initShow = () => {
  showIt();
};

export { initShow };
