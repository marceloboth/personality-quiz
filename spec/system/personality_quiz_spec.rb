# frozen_string_literal: true

require 'system_helper'

describe 'Personality Test', js: true do
  before do
    stub_const('Question::TOTAL_QUESTIONS_ON_QUIZ', 2)

    answers_question_1
    answers_question_2

    visit root_path
    click_link 'Get started'
  end

  let(:question_1) do
    create(:question, title: "You're really busy at work and a colleague is telling you their life story and personal woes. You:")
  end
  let(:question_2) do
    create(:question, title: "You've been sitting in the doctor's waiting room for more than 25 minutes. You:")
  end
  let(:answers_question_1) do
    [
      create(:answer, question: question_1, title: "Don't dare to interrupt them", personality: 1),
      create(:answer, question: question_1, title: "Think it's more important to give them some of your time; work can wait", personality: 2),
      create(:answer, question: question_1, title: 'Listen, but with only with half an ear', personality: 3),
      create(:answer, question: question_1, title: 'Interrupt and explain that you are really busy at the moment', personality: 4)
    ]
  end
  let(:answers_question_2) do
    [
      create(:answer, question: question_2, title: 'Look at your watch every two minutes', personality: 1),
      create(:answer, question: question_2, title: 'Bubble with inner anger, but keep quiet', personality: 2),
      create(:answer, question: question_2, title: 'Explain to other equally impatient people in the room that the doctor is always running late', personality: 3),
      create(:answer, question: question_2, title: 'Complain in a loud voice, while tapping your foot impatiently', personality: 4)
    ]
  end

  describe 'user can answer the questions and have a result in the end' do
    it 'navigate through questions' do
      expect(page).to have_content('Question 1/2')

      expect(page).to have_content(question_1.title)
      answers_question_1.each do |answer|
        expect(page).to have_content(answer.title)
      end

      expect(page).not_to have_content(question_2.title)

      click_button('Next step')

      expect(page).to have_content('Question 2/2')

      expect(page).not_to have_content(question_1.title)
      expect(page).to have_content(question_2.title)
      answers_question_2.each do |answer|
        expect(page).to have_content(answer.title)
      end

      click_button('Previous step')
      expect(page).to have_content('Question 1/2')
      expect(page).to have_content(question_1.title)
    end

    it 'answer each question and get a personality result' do
      expect(page).to have_content('Question 1/2')
      choose "Don't dare to interrupt them"
      click_button('Next step')
      choose 'Look at your watch every two minutes'
      click_button('Save')

      expect(page).to have_current_path(quiz_result_path)
      expect(page).to have_content('You are an introvert person')
      expect(page).to have_content('based on your score of 1')
      expect(page).to have_link('Want to do it again?')
    end
  end
end
