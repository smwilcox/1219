class CreateMinutes < ActiveRecord::Migration
  def self.up
    create_table :minutes do |t|
      t.string :name
      t.text :description
      t.string :contributor_name
      t.string :contributor_email
      t.string :cached_tag_list
      t.string :minute_file_name
      t.string :minute_content_type
      t.integer :minute_file_size

      t.timestamps
    end
  end

  def self.down
    drop_table :minutes
  end
end
