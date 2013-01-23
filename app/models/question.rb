class Question < ActiveRecord::Base
  attr_accessible :lesson_id, :question, :explanation, :audioclip, :octave, :answer
  
 
  
  has_attached_file :audioclip
end
