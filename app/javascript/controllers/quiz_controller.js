import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="quiz"
export default class extends Controller {
  static targets = [ "question", "step", "previous", "next", "finish" ]

  initialize() {
    this.index = 0

    this.manageState()
  }

  enableNextButton() {
    console.log(this.nextTarget)
    this.nextTarget.disabled = false
  }

  next() {
    this.index++
    this.manageState()
  }

  previous() {
    this.index--
    this.manageState()
    this.nextTarget.disabled = false
  }

  manageState() {
    this.showCurrentQuestion()
    this.updateQuestionStep()
    this.manageButtonsState()
  }

  showCurrentQuestion() {
    this.questionTargets.forEach((element, index) => {
      element.hidden = index !== this.index
    })
  }

  updateQuestionStep() {
    this.stepTarget.innerText = `Question ${this.index + 1}/${this.questionTargets.length}`
  }

  manageButtonsState() {
    // disable the next step always
    this.nextTarget.disabled = true

    if (this.index === 0) {
      this.previousTarget.classList.add("invisible")
      this.finishTarget.classList.add("invisible")
    }

    if (this.index > 0) {
      this.previousTarget.classList.remove("invisible")
      this.nextTarget.classList.remove("invisible")
      this.finishTarget.classList.add("invisible")
    }

    if (this.index === this.questionTargets.length - 1) {
      this.nextTarget.classList.add("invisible")
      this.finishTarget.classList.remove("invisible")
    }
  }
}
