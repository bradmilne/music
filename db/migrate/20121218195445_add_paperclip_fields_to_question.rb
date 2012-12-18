class AddPaperclipFieldsToQuestion < ActiveRecord::Migration
  def change
    add_column :questions, :audioclip_file_name,    :string
    add_column :questions, :audioclip_content_type, :string
    add_column :questions, :audioclip_file_size,    :integer
    add_column :questions, :audioclip_updated_at,   :datetime
  end
end
