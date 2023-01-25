# frozen_string_literal: true

class QuizResultsController < ApplicationController
  def show
    @quiz_result = QuizResultService.call(answers_sum: session[:answers_sum])
  end
end
