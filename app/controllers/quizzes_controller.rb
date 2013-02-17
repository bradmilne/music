class QuizzesController < ApplicationController
  
  def new
    @lesson = Lesson.find(params[:lesson_id])
    @questions = @lesson.questions.all
    @question1 = @questions.shuffle[1]
    @question2 = @questions.shuffle[1]
    @question3 = @questions.shuffle[1]
  end
  
  def show
  end
  
  def create
  end
  
end
