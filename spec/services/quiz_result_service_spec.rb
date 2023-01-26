require 'rails_helper'

describe QuizResultService do
  subject(:quiz_result_service) { described_class }

  describe '#call' do
    describe 'when introvert trait' do
      let(:quiz_result) { quiz_result_service.call(answers_sum: 2, number_questions: 2) }

      it { expect(quiz_result).to eql('You are more of an introvert') }
    end

    describe 'when public introvert and private extrovert' do
      let(:quiz_result) { quiz_result_service.call(answers_sum: 4, number_questions: 2) }

      it { expect(quiz_result).to eql('You are more of a public introvert and private extrovert') }
    end

    describe 'when public extrovert and private introvert' do
      let(:quiz_result) { quiz_result_service.call(answers_sum: 6, number_questions: 2) }

      it { expect(quiz_result).to eql('You are more of a public extrovert and private introvert') }
    end

    describe 'when extrovert trait' do
      let(:quiz_result) { quiz_result_service.call(answers_sum: 8, number_questions: 2) }

      it { expect(quiz_result).to eql('You are more of an extrovert') }
    end
  end
end
