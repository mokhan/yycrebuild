class Need < ActiveRecord::Base
  belongs_to :user
  attr_accessible :description, :address, :latitude, :longitude
  acts_as_taggable
end
