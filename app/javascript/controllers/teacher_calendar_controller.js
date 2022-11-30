import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="teacher-calendar"
export default class extends Controller {
  static targets = ["mark"]
  connect() {
    console.log("oi")
  }

  mark(event) {
    console.log(this.markTargets)
    this.markTargets.forEach((cell)=> {
      cell.classList.remove("bg-danger")
    });

    if (event.currentTarget.innerText === "-"){
      return
    } else {
      event.currentTarget.classList.add("bg-danger")
    }
  }
}
