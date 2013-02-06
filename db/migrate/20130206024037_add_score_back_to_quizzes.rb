class AddScoreBackToQuizzes < ActiveRecord::Migration
  def change
    add_column :quizzes, :score, :decimal
  end
end
