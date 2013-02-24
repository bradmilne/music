class Lesson < ActiveRecord::Base
  attr_accessible :title, :description, :path_id
  
  has_many :questions
  has_many :quizzes
  has_many :responses
  accepts_nested_attributes_for :quizzes
  accepts_nested_attributes_for :responses
  
  belongs_to :path
end
