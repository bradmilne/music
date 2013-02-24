class Lesson < ActiveRecord::Base
  attr_accessible :title, :description, :path_id
  
  has_many :questions
  has_many :quizzes
  accepts_nested_attributes_for :quizzes
  
  belongs_to :path
end
