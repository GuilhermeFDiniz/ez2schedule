import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="teacher-calendar"
export default class extends Controller {
  static targets = ["mark", "start", "end"]
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
      console.log(this.startTarget.value)
      console.log(this.endTarget.value)
      this.startTarget.value = event.currentTarget.innerText
      this.endTarget.value = `${(parseInt(event.currentTarget.innerText) + 1)}:00`
    }
  }
}
