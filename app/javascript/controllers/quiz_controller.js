import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="quiz"
export default class extends Controller {
  static targets = [ "question", "step", "previous", "next" ]

  initialize() {
    this.index = 0
    this.showCurrentQuestion()
    this.updateQuestionStep()
  }

  next() {
    this.index++
    this.showCurrentQuestion()
    this.updateQuestionStep()
  }

  previous() {
    this.index--
    this.showCurrentQuestion()
    this.updateQuestionStep()
  }

  showCurrentQuestion() {
    this.questionTargets.forEach((element, index) => {
      element.hidden = index !== this.index
    })
  }

  updateQuestionStep() {
    this.stepTarget.innerText = `Question ${this.index + 1}/${this.questionTargets.length}`
    this.previousTarget.disabled = this.index === 0

    if (this.index === this.questionTargets.length - 1) {
      this.nextTarget.disabled = true
    }
  }
}
