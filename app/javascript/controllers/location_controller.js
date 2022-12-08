import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="location"
export default class extends Controller {
  static targets = ["inPerson", "remote"]
  connect() {
    console.log('Your location controller is now installed.')
  }
  disableInPerson() {
    this.inPersonTarget.checked = false
  }
  disableRemote() {
    this.remoteTarget.checked = false
  }
}
