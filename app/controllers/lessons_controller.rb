class LessonsController < ApplicationController
  def show
    @lesson = Lesson.find(params[:id])
    @quiz = @lesson.quiz
  end
end