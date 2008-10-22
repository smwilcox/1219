class AddLocation < ActiveRecord::Migration
  def self.up
    add_column :minutes, :location, :string
  end

  def self.down
    remove_column :minutes, :location
  end
end
