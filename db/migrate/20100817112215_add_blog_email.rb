class AddBlogEmail < ActiveRecord::Migration
  def self.up
    add_column :blogs, :blog_email, :string
  end

  def self.down
    remove_column :blogs, :blog_email
  end
end
