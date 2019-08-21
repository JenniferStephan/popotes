import "bootstrap";

import $ from 'jquery';
import 'select2';
import 'select2/dist/css/select2.css';

// const initSelect2 = () => {
//   $('.select2').select2();
// };

// initSelect2();



const initSelector = () => {
  $(document).ready(function() {
      $('.js-example-basic-multiple').select2();
  });
}

initSelector();


