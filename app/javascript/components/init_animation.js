const initAnimation = () => {
  const splashScreen = document.querySelector(".splashscreen");
  const homepage = document.querySelector(".homepage");
  const mainLogo = document.querySelector("#main-logo");
  if (location.pathname === "/") {
    console.log(splashScreen);
    console.log(homepage);
    console.log(mainLogo);
    setInterval(() => {
      homepage.classList.remove("d-none");
      splashScreen.classList.add("transition");
      setInterval(() => {
        splashScreen.classList.add("d-none");
        homepage.classList.add("transition-in");
      }, 1000);
    }, 1500);
  }
}

export { initAnimation };
