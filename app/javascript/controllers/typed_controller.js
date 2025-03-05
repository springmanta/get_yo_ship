import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="typed"
export default class extends Controller {
  connect() {
    if (document.body.classList.contains('pages-home')) {
      const text = "Welcome to our spaceship rental service! Embark on an unforgettable journey through the stars, where adventure and discovery await. Browse our fleet, choose your ship, and launch into a world beyond imagination.";
      const textElement = document.getElementById('typewriter-text');
      const button = document.querySelector('.shadow-button'); // Target the button
      let index = 0;

      function typeText() {
        if (index < text.length) {
          textElement.textContent += text.charAt(index);
          index++;
          setTimeout(typeText, 50); // Adjust typing speed
        } else {
          // Add class to button when typing finishes
          button.classList.add('border-appear');
        }
      }

      typeText(); // Start the typewriter effect
    }
  }
}
