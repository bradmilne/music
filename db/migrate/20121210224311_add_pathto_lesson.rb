class AddPathtoLesson < ActiveRecord::Migration
  def up
    add_column :lessons, :path_id, :integer
  end

  def down
    remove_column :lessons, :path_id, :integer    
  end
end
