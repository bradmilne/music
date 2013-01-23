class AddQuestionToQuiz < ActiveRecord::Migration
  def change
    add_column :quizzes, :question_id, :integer
  end
end
