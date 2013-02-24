class CreateResponses < ActiveRecord::Migration
  def change
    create_table :responses do |t|
      t.string  :correct_answer
      t.string  :user_answer
      t.integer :octave
      
      t.timestamps
    end
  end
end
