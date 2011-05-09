class AddCaptionAndDescriptionToBadges < ActiveRecord::Migration
  def self.up
    add_column :badges, :caption, :string
    add_column :badges, :description, :text
  end

  def self.down
    remove_column :badges, :caption
    remove_column :badges, :description
  end
end
