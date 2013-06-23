class Need < ActiveRecord::Base
  belongs_to :user
  attr_accessible :description, :address, :latitude, :longitude
  acts_as_taggable
  geocoded_by :address
  after_validation :geocode, :if => :address_changed?
  default_scope order("created_at DESC")
end
