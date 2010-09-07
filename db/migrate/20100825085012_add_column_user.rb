class AddColumnUser < ActiveRecord::Migration
  def self.up
    add_column :users, :user_code, :integer
  end

  def self.down
    remove_column :users, :user_code
  end
end
