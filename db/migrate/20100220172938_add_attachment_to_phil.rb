class AddAttachmentToPhil < ActiveRecord::Migration
  def self.up
    add_column :philosophy_files, :attachment_file_name,    :string
    add_column :philosophy_files, :attachment_content_type, :string
    add_column :philosophy_files, :attachment_file_size,    :integer
    add_column :philosophy_files, :attachment_updated_at,   :datetime
  end

  def self.down
    remove_column :philosophy_files, :attachment_file_name
    remove_column :philosophy_files, :attachment_content_type
    remove_column :philosophy_files, :attachment_file_size
    remove_column :philosophy_files, :attachment_updated_at
  end
end
