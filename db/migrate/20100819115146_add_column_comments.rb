class AddColumnComments < ActiveRecord::Migration
  def self.up
     add_column :comments, :blogs_id, :integer
  end

  def self.down
   remove_column :comments, :blogs_id
  end
end
