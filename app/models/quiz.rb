class Quiz < ActiveRecord::Base
  attr_accessible :description, :title, :lesson_id, :question_id
  
  belongs_to :lesson
  has_many :questions
end
