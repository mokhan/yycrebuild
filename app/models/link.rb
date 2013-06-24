class Link < ActiveRecord::Base
  attr_accessible :url, :description, :title, :thumbnail_url
  validates :url,  :presence => true
  belongs_to :user
  acts_as_taggable

  default_scope order("created_at DESC")

  def to_param
    "#{id}-#{heading.gsub(/[^a-z0-9]+/i, '-')}"
  end 
end
