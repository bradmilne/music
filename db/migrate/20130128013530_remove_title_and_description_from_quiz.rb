class RemoveTitleAndDescriptionFromQuiz < ActiveRecord::Migration
  def up
    remove_column :quizzes, :title
    remove_column :quizzes, :description
  end

  def down
    add_column :quizzes, :title, :string
    add_column :quizzes, :description, :text
  end
end
