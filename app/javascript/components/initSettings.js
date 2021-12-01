const set = () => {
  const settings = document.querySelector('.s');
  const setting = document.querySelector('.settings');
  setting.classList.toggle('hide');
  settings.addEventListener('click', set);
};


const initSettings = () => {
  set();
};

export { initSettings };
