class Resource < ActiveRecord::Base
  attr_accessible :title, :link, :description
end