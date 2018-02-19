class QuestionsController < ApplicationController
  @coach_answer_a = "Great!"
  @coach_answer_b = "Silly question, get dressed and go to work!"
  @coach_answer_c = "I don't care, get dressed and go to work!"

  def ask
  end

  def answer
    @question = params[:question]
    if @question == "I am going to work!"
      @response = "Great!"
    elsif @question.include? "?"
      @response = "Silly question, get dressed and go to work!"
    else
      @response = "I don't care, get dressed and go to work!"
    end
  end

end
