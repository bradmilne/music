class Question < ActiveRecord::Base
  attr_accessible :lesson_id, :question, :explanation, :audioclip, :octave, :answer, :quiz_id
  
 
  belongs_to :quiz
  
  has_attached_file :audioclip
end
