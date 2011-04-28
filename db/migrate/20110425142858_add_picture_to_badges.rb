class AddPictureToBadges < ActiveRecord::Migration
    def self.up
      add_column :badges, :picture_url,    :string
    end

    def self.down
      remove_column :badges, :picture_url
    end
  end