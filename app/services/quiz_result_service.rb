class QuizResultService
  include CallableService

  def initialize(answers_sum:, number_questions: Question::TOTAL_QUESTIONS_ON_QUIZ)
    @answers_sum = answers_sum
    @number_questions = number_questions
  end

  def call
    trait
  end

  private

  def score
    @score ||= (@answers_sum.to_f / @number_questions).ceil
  end

  def trait
    traits = {
      1 => 'You are more of an introvert',
      2 => 'You are more of a public introvert and private extrovert',
      3 => 'You are more of a public extrovert and private introvert',
      4 => 'You are more of an extrovert'
    }

    traits[score]
  end
end
