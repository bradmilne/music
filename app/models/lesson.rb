class Lesson < ActiveRecord::Base
  attr_accessible :title, :description, :path_id
  
  belongs_to :path
  has_many :questions
  has_one :quiz
end
