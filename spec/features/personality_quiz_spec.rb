# frozen_string_literal: true

require 'rails_helper'

describe 'Personality Test' do
  before do
    answers_question_1
    answers_question_2
    
    visit root_path
    click_link 'Get started'
  end

  let(:questions) { create_list(:question, 2) }
  let(:answers_question_1) { create_list(:answer, 4, question: questions.first) }
  let(:answers_question_2) { create_list(:answer, 4, question: questions.last) }

  describe 'user can answer the questions and have a result in the end', js: true do
    it 'select answers and finalize the test' do
      save_and_open_page
      expect(page).to have_content('Question 1/2')
    end
  end
end