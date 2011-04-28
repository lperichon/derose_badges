class Badge < ActiveRecord::Base
  validates :name, :picture_url, :presence => true
end
