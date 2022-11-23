import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["element", "elementTwo"]

  toggle() {
    if (this.elementTarget.style.visibility === "hidden") {
        this.elementTarget.style.visibility = "visible"
    } else {
        this.elementTarget.style.visibility = "hidden"
    }
  }

  dualToggle() {
    if (this.elementTarget.style.visibility === "hidden") {
        this.elementTarget.style.visibility = "visible";
        this.elementTwoTarget.style.visibility = "hidden"
    } else {
        this.elementTarget.style.visibility = "hidden";
        this.elementTwoTarget.style.visibility = "visible"
    }
  }

  outline() {
    if (this.elementTarget.style.border !== "10px solid black") {
        this.elementTarget.style.border = "10px solid black"
    } else {
        this.elementTarget.style.border = "none"
    }
  }
}