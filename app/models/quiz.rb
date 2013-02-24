class Quiz < ActiveRecord::Base
  attr_accessible :score, :lesson_id
  belongs_to :lesson, :polymorphic => true
  accepts_nested_attributes_for :lesson
  before_create :calculate_score
  
  def calculate_score
    self.score = self.score * 20
  end
end
