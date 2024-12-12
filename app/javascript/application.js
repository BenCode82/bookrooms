// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"
import "@popperjs/core"
import "bootstrap"

document.getElementById("openModal").addEventListener("click", function(event) {
    var modal = document.getElementById('myModal');
    var closeModalButton = modal.querySelector('.close');

    closeModalButton.addEventListener('click', function() {
      modal.style.display = 'none';
    });

    modal.style.display = 'block';
  });
