class Response < ActiveRecord::Base
  attr_accessible :correct_answer, :user_answer, :octave, :lesson_id, :result
  belongs_to :lesson
  before_create :answer_checker
  
  def answer_checker
    if self.correct_answer == self.user_answer
      self.result = true
    else
      self.result = false
      nil
    end
  end
end
