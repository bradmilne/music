class RemoveQuizFromLesson < ActiveRecord::Migration
  def up
    remove_column :quizzes, :lesson_id
  end

  def down
    add_column :quizzes, :lesson_id, :integer
  end
end
