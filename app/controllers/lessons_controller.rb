class LessonsController < ApplicationController
  def show
    @lesson = Lesson.find(params[:id])
    @quiz = @lesson.quiz
    @questions = @lesson.questions
  end
end