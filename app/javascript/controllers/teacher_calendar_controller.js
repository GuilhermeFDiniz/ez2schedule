import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="teacher-calendar"
export default class extends Controller {
  static targets = ["mark", "start", "end"]
  connect() {
    console.log(this.markTargets)
    this.markTargets.forEach((cell)=> {
      if (cell.innerText === "") {
      cell.classList.add("not-available-slot")
    }
    });
  }

  mark(event) {
    this.markTargets.forEach((cell)=> {
      cell.classList.remove("calendar-mark")
    });
    if (event.currentTarget.innerText === ""){
      return
    } else {
      event.currentTarget.classList.add("calendar-mark")
      this.startTarget.value = `${event.params.date} ${event.currentTarget.innerText}`
      this.endTarget.value = `${event.params.date} ${(parseInt(event.currentTarget.innerText) + 1)}:00`
    }
  }
}
