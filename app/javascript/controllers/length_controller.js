import { Controller } from "@hotwired/stimulus"

const limit = 10;

export default class extends Controller {
  static targets = ["input", "warning"]

  check() {
    length = this.inputTarget.value.length;

    if (length < limit) {
      this.warningTarget.innerHTML = `${limit - length} characters remaining!`
    } else {
      this.warningTarget.innerHTML = "Your message is too long!"
    }
  }
}
