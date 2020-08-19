// À ajouter : faire un querySelectorAll et un forEach pour que le bouton s'affiche sur chaque card !

const element = document.querySelector('.fa-heart');

if (element) {
  element.addEventListener('click', (event) => {
    console.log(element);
    element.classList.toggle("fav-prod-color-red");
  });
}

