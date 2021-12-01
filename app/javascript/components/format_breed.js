function formatBreed(breed) {
  if (!breed.id) {
    return breed.text;
  }
  var baseUrl = "https://dog.ceo/api/breed/";
  var $breed = $(
    '<span><img src="' + baseUrl + breed.element.value.toLowerCase() + '/images" class="img-flag" /> ' + breed.text + '</span>'
  );
  return $breed;
};

$(".js-example-templating").select2({
  templateResult: formatBreed
});

export { formatBreed };

// -----
//   function formatState(state) {
//     if (!state.id) {
//       return state.text;
//     }
//     var baseUrl = "/user/pages/images/flags";
//     var $state = $(
//       '<span><img src="' + baseUrl + '/' + state.element.value.toLowerCase() + '.png" class="img-flag" /> ' + state.text + '</span>'
//     );
//     return $state;
//   };

// $(".js-example-templating").select2({
//   templateResult: formatState
// });
