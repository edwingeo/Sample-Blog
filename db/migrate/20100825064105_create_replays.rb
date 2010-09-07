class CreateReplays < ActiveRecord::Migration
  def self.up
    create_table :replays do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :replays
  end
end
