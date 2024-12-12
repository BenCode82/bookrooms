// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"
import "@popperjs/core"
import "bootstrap"

document.addEventListener("turbo:load", function () {
  const openModalButton = document.getElementById("openModal");
  const modal = document.getElementById("myModal");

  if (openModalButton && modal) {
    openModalButton.addEventListener("click", function (event) {
      const closeModalButton = modal.querySelector(".close");

      if (closeModalButton) {
        closeModalButton.addEventListener("click", function () {
          modal.style.display = "none";
        });
      }

      modal.style.display = "block";
    });
  }
});
