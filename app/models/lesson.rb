class Lesson < ActiveRecord::Base
  attr_accessible :string, :text
  
  belongs_to :path
end
