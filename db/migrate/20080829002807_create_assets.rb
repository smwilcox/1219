class CreateAssets < ActiveRecord::Migration
  def self.up
    create_table :assets do |t|
      t.string :name
      t.text :description
      t.string :contributor_name
      t.string :contributor_email
      t.string :cached_tag_list
      t.string :asset_file_name
      t.string :asset_content_type
      t.integer :asset_file_size

      t.timestamps
    end
  end

  def self.down
    drop_table :assets
  end
end
