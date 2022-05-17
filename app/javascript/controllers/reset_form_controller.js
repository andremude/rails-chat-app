import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  reset() {
    this.element.reset()
    console.log('reset')
  }

  connect() {
    console.log('connect')
  }
}
