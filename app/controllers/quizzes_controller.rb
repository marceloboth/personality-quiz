# frozen_string_literal: true

class QuizzesController < ApplicationController
  def new
    @questions = Question.preload(:answers).limit(5)
  end

  def create
    session[:quiz_result] = quiz_params.values.sum(&:to_i)
    redirect_to quiz_result_path
  end

  private

  def quiz_params
    p = Question.pluck(:id).map { |q| "question_#{q}".to_sym }
    params.require(:quiz).permit(p)
  end
end
