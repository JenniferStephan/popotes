import "bootstrap";

import $ from 'jquery';
import 'select2';
import 'select2/dist/css/select2.css';
import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!
import '@mapbox/mapbox-gl-geocoder/dist/mapbox-gl-geocoder.css';
import { initMapbox } from '../plugins/init_mapbox';
import { initAutocomplete } from '../plugins/init_autocomplete';
// import flatpickr from "flatpickr";



// const myInput = document.querySelector(".myInput");
// const fp = flatpickr(myInput, {});  // flatpickr


const initSelector = () => {
  $(document).ready(function() {
      $('.js-example-basic-multiple').select2();
  });
}

initSelector();

initMapbox();

if (document.querySelector('#meal_address')) {
  initAutocomplete();
}


if (document.querySelector(".total-price")) {
const meal = JSON.parse(document.querySelector(".total-price").dataset.meal);
const additionTotal = () => {
  const quantity = document.querySelector('#order_order_quantity').value;
  document.querySelector(".total-price").innerHTML = quantity * meal.unit_price;

};

const button = document.querySelector('#order_order_quantity')

document.addEventListener('keyup', (event) => {
  additionTotal();
});

document.addEventListener('click', (event) => {
  additionTotal();
});
}

if
const portionOrdered = document.querySelector('.order-count').innerText;
console.log(portionOrdered);

if (portionOrdered == 0) {
  const changeClass = () => {
  const element = document.querySelector(".meal-card");
  element.classList.add("mealcard-disabled");
  };
  changeClass();
}

// let condition = (portionOrdered == "0");
// const element = document.querySelector(".meal-card");

// let changeClass = element.classList.toggle('meal-card-disabled', !!condition);
// console.log(changeClass);



