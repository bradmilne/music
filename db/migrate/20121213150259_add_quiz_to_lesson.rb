class AddQuizToLesson < ActiveRecord::Migration
  def up
    add_column :quizzes, :lesson_id, :integer
  end

  def down
    remove_column :quizzes, :lesson_id, :integer    
  end
 
end
