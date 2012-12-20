class Question < ActiveRecord::Base
  attr_accessible :lesson_id, :question, :explanation, :audioclip
  
  belongs_to :lesson
  
  has_attached_file :audioclip
end
