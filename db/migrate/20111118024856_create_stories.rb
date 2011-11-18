class CreateStories < ActiveRecord::Migration
  def self.up
    create_table :stories do |t|
      t.integer :medium_id
      t.string :title
      t.boolean :launch, :defaults => false

      t.timestamps
    end
  end

  def self.down
    drop_table :stories
  end
end
