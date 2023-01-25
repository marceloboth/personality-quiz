# frozen_string_literal: true

class QuizResultsController < ApplicationController
  def show
    @score = session[:quiz_result]
  end
end
