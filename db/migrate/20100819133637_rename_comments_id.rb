class RenameCommentsId < ActiveRecord::Migration
  def self.up
     rename_column :comments, :blogs_id, :blog_id
  end

  def self.down
    rename_column :comments, :blog_id, :blogs_id
  end
end
