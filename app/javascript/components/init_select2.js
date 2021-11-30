import $ from 'jquery';
import 'select2';

const initSelect2 = () => {
  $('#dog_breed').select2({
    placeholder: 'Select a breed',
    width: '66%'
  });
  $('#dog_gender').select2({
    width: '32.5%'
  }
  );
};

export { initSelect2 };
