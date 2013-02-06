class ChangeScaleOnQuizzes < ActiveRecord::Migration
  def up
    remove_column :quizzes, :score, :decimal
  end

  def down
    add_column :quizzes, :score, :decimal
  end
end
