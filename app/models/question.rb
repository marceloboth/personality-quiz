class Question < ApplicationRecord
  TOTAL_QUESTIONS_ON_QUIZ = 5

  has_many :answers

  scope :personality_test, -> { preload(:answers).limit(TOTAL_QUESTIONS_ON_QUIZ) }

  def self.permitted_questions
    personality_test.pluck(:id).map { |q| "question_#{q}".to_sym }
  end
end
