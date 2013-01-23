class LessonsController < ApplicationController
  def show
    @lesson = Lesson.find(params[:id])
    @questions = @lesson.questions.all
  end
end