class Quiz < ActiveRecord::Base
  attr_accessible :description, :title, :lesson_id
  
  belongs_to :lesson
end
