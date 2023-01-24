# frozen_string_literal: true

class QuizzesController < ApplicationController
  def show
    @questions = Question.preload(:answers).limit(5)
  end
end
