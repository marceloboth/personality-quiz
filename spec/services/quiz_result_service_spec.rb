require 'rails_helper'

describe QuizResultService do
  subject(:quiz_result_service) { described_class }

  describe '#call' do
    describe 'when low score' do
      let(:quiz_result) { quiz_result_service.call(answers_sum: 2, number_questions: 2) }

      it { expect(quiz_result).to include({ score: 1, result: 'You are an introvert person' }) }
    end

    describe 'when high score' do
      let(:quiz_result) { quiz_result_service.call(answers_sum: 6, number_questions: 2) }

      it { expect(quiz_result).to include({ score: 3, result: 'You are an extrovert person' }) }
    end
  end
end
