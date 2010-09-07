class RenameBlogCategory < ActiveRecord::Migration
  def self.up
    rename_column :blogs, :blog_category, :category_id
  end

  def self.down
   rename_column :blogs, :category_id, :blog_category
  end
end
