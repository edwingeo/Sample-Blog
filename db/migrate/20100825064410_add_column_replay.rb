class AddColumnReplay < ActiveRecord::Migration
  def self.up
    add_column :replays, :comments_id, :integer
  end

  def self.down
    remove_column :replays, :comments_id
  end
end
