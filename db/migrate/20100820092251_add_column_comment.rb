class AddColumnComment < ActiveRecord::Migration
  def self.up
    add_column :comments, :posted_by, :string
    add_column :comments, :posted_date,:date
    add_column :comments, :email,:string
  end

  def self.down
    remove_column :comments, :posted_by
    remove_column :comments, :posted_date
    remove_column :comments, :email

  end
end
