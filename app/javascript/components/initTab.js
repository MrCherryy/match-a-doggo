const myMatches = document.querySelector(".my-match-tab");
const toReview = document.querySelector(".to-review-tab");
const initTab = () => {
  if (myMatches) {
    myMatches.addEventListener('click', () =>{
      toReview.classList.remove('active-tab');
      myMatches.classList.add('active-tab');
    })
  }
  if (toReview) {
    toReview.addEventListener('click', () =>{
      myMatches.classList.remove('active-tab');
      toReview.classList.add('active-tab');
    })
  }
}

export { initTab };
