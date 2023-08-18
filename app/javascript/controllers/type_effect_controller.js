import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="type-effect"
import Typed from 'typed.js';

export default class extends Controller {
  connect() {
    console.log("Hello, Stimulus!", this.element)
    var options = {
      strings: ["Keep track of your movies"],
      typeSpeed: 50, // typing speed in milliseconds
      loop: true // loop the typing animation
    };

    this.typed = new Typed(this.element, options);
  }

  disconnect() {
    this.typed.destroy();
  }
}
