class Response < ActiveRecord::Base
  attr_accessible :correct_answer, :user_answer, :octave, :lesson_id
  belongs_to :lesson
end
