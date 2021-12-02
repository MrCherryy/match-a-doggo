import $ from 'jquery';
import 'select2';

function formatBreed(breed) {
  if (!breed.id) {
    return breed.text;
  }
  var baseUrl = "https://dog.ceo/api/breed/";
  var $breed = $(
    '<span><img src="' + baseUrl + breed.element.value.toLowerCase().replace(/-/g, '/') + '/images/random" class="img-flag" /> ' + breed.text + '</span>'
  );
  return $breed;
};

const initSelect2 = () => {
  $('#dog_breed').select2({
    placeholder: 'Select a breed',
    width: '66%',
    templateResult: formatBreed
  });
  $('#dog_gender').select2({
    width: '32.5%'
  }
  );
};

export { initSelect2 };
