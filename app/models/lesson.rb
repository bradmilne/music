class Lesson < ActiveRecord::Base
  attr_accessible :title, :description, :path_id
  
  has_many :questions
  
  belongs_to :path
end
