class Need < ActiveRecord::Base
  belongs_to :user
  attr_accessible :description, :user_id
  acts_as_taggable
end
