class AddLessonIdToQuiz < ActiveRecord::Migration
  def change
    add_column :quizzes, :lesson_id, :integer
    add_index :quizzes, :lesson_id
  end
end
