// import { Controller } from "@hotwired/stimulus";

// export default class extends Controller {
//   static targets = ["modal"];

//   connect() {
//     console.log("ModalEffectController connected");

//     this.modal = document.getElementById("myModal");
//     this.profileIcon = document.getElementById("userProfileIcon");
//   }

//   submit(event) {
//     event.preventDefault(); // Empêche le rechargement de la page

//     // Ajoute la classe d'animation
//     this.modal.classList.add("reducing");

//     // Attend la fin de l'animation pour cacher la modale
//     this.modal.addEventListener("animationend", () => {
//       this.modal.style.display = "none";

//       // Soumet le formulaire en arrière-plan avec Turbo
//       event.target.submit();
//     }, { once: true });
//   }
// }
