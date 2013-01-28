class Quiz < ActiveRecord::Base
  attr_accessible :score, :lesson_id
  
  belongs_to :lesson
end
