import $ from 'jquery';
import 'select2';

const initSelect2 = () => {
  $('#dog_breed').select2({
    placeholder: 'Select a breed'
  });
  $('#dog_gender').select2({
    width: '30%'
  }
  );
};

export { initSelect2 };
