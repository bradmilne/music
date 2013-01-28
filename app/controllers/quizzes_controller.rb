class QuizzesController < ApplicationController
  
  def new
    @lesson = Lesson.find(params[:lesson_id])
    @questions = @lesson.questions.all
  end
  
  def show
  end
  
end
