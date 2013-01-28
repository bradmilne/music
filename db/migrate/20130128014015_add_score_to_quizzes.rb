class AddScoreToQuizzes < ActiveRecord::Migration
  def change
    add_column :quizzes, :score, :decimal, :precision => 3, :scale => 4
  end
end
