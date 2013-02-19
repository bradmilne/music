class QuizzesController < ApplicationController
  
  def new
    @lesson = Lesson.find(params[:lesson_id])
    @questions = @lesson.questions.all
    @question1 = @questions.shuffle[1]
    @question2 = @questions.shuffle[1]
    @question3 = @questions.shuffle[1]
  end
  
  
  
  def create
    @score = 0
    if params[:user_answer1] == params[:correct_answer1]
      @score = @score + 1
      flash[:notice] = "Yes you got it right!"
      render 'show' 
    else
      flash[:notice] = "Sorry you got it wrong"
      @score = @score
      render 'show'
    end
  end
  
  def show
    @score
  end
  
end
