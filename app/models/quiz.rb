class Quiz < ActiveRecord::Base
  attr_accessible :score, :lesson_id
  belongs_to :lesson, :polymorphic => true
  accepts_nested_attributes_for :lesson
 
end
