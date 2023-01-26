class QuizResultService
  include CallableService

  def initialize(answers_sum:, number_questions: Question::TOTAL_QUESTIONS_ON_QUIZ)
    @answers_sum = answers_sum
    @number_questions = number_questions
  end

  def call
    { score:, result: }
  end

  private

  def result
    return 'You are an extrovert person' if score > 2

    'You are an introvert person'
  end

  def score
    @score ||= (@answers_sum.to_f / @number_questions).ceil
  end
end
