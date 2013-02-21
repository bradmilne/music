class QuizzesController < ApplicationController
  
  def new
    @lesson = Lesson.find(params[:lesson_id])
    @questions = @lesson.questions.all
    @question1 = @questions.shuffle[1]
    @question2 = @questions.shuffle[1]
    @question3 = @questions.shuffle[1]
    @question4 = @questions.shuffle[1]
    @question5 = @questions.shuffle[1]
  end
  
  
  
  def create
    @question1_score = params[:user_answer1] == params[:correct_answer1] ? 1 : 0
    @question2_score = params[:user_answer2] == params[:correct_answer2] ? 1 : 0
    @question3_score = params[:user_answer3] == params[:correct_answer3] ? 1 : 0
    @score = @question1_score + @question2_score + @question3_score
    if @score == 3 
      flash[:notice] = "Unbelievable! You got #{@score} out of 5!"
      render 'show'
    elsif @score == 2
      flash[:notice] = "Good work! You got #{@score} out of 5!"
      render 'show'    
    elsif @score == 1
      flash[:notice] = "Hmmm.. you might need some more practice. You got #{@score} out of 5."
      render 'show'
    else
      flash[:notice] = "Keep at it and you'll start to get it! You got #{@score} out of 5."
      render 'show'
    end
  end
  
  def show
    @score
    @question1_score
  end
  
end
