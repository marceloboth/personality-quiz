# frozen_string_literal: true

class QuizzesController < ApplicationController
  def new
    @questions = Question.personality_test
  end

  def create
    session[:answers_sum] = quiz_params.values.sum(&:to_i)
    redirect_to quiz_result_path
  end

  private

  def quiz_params
    params.require(:quiz).permit(Question.permitted_questions)
  end
end
