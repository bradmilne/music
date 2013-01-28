class QuizzesController < ApplicationController
  
  def new
    @lesson = Lesson.find(params[:lesson_id])
  end
  
  def show
  end
  
end
