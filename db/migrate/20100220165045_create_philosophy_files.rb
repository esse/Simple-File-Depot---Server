class CreatePhilosophyFiles < ActiveRecord::Migration
  def self.up
    create_table :philosophy_files do |t|
      t.string :name
      t.timestamps
    end
  end
  
  def self.down
    drop_table :philosophy_files
  end
end
