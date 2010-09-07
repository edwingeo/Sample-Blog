class CreateBlogs < ActiveRecord::Migration
  def self.up
    create_table :blogs do |t|
t.string :blog_name, :blog_category
t.text :blog_description
      t.timestamps
    end
  end

  def self.down
    drop_table :blogs
  end
end
