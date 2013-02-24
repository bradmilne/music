class AddLessonIdtoResponse < ActiveRecord::Migration
  def up
    add_column :responses, :lesson_id, :integer
  end

  def down
    remove_column :responses, :lesson_id, :integer
  end
end
