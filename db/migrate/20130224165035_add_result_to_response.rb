class AddResultToResponse < ActiveRecord::Migration
  def change
    add_column :responses, :result, :string
  end
end
