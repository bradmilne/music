class Path < ActiveRecord::Base
  attr_accessible :description, :title
  
  has_many :lessons
end
