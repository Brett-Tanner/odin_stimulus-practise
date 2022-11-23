import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["name", "output"]

  greet() {
    this.outputTarget.innerHTML = `Hello there ${this.nameTarget.value}!`
  }
}
