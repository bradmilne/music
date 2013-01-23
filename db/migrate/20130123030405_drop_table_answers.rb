class DropTableAnswers < ActiveRecord::Migration
  def up
    drop_table :answers
  end

  def down
    create_table :answers do |t|
      t.integer :question_id
      t.string :answer

      t.timestamps
    end
  end
end
