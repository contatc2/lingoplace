import "bootstrap";

const reviewInput = document.querySelector("#review_stars")

const stars = document.querySelectorAll('.rating > input')
stars.forEach(star => {
  star.addEventListener('click', event => {
    reviewInput.value = event.currentTarget.value
  })
})
