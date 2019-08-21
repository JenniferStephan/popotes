import places from 'places.js';

const initAutocomplete = () => {
  const addressInput = document.getElementById('meal_address');
  console.log(addressInput);
  if (addressInput) {
    places({ container: addressInput });
  }
};

export { initAutocomplete };
