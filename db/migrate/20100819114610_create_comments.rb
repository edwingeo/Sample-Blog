class CreateComments < ActiveRecord::Migration
  def self.up
    create_table :comments do |t|
    t.text:comments_description
    t.integer:blog_id
  end
 end
  def self.down
    drop_table :comments
  end
end
