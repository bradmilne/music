class ChangePrecisionOnQuizzes < ActiveRecord::Migration
  def up
    change_column :quizzes, :score, :decimal, :precision => 6, :scale => 3
  end

  def down
    change_column :quizzes, :score, :decimal, :precision => 3, :scale => 4
  end
end
