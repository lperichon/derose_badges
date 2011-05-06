class IncreaseLengthOfFacebookIds < ActiveRecord::Migration
  def self.up
    change_column :users, :facebook_id, :integer, :limit => 8
  end

  def self.down
    change_column :users, :facebook_id, :integer
  end
end
