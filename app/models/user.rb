class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable
  after_save :get_location

  attr_accessible :name, :email, :password, :password_confirmation, :remember_me, :postal_code, :latitude, :longitude
  has_many :needs
  acts_as_tagger

private

  def get_location

    return if self.postal_code.nil? 
  
    location = GeoLocationService.GetGeoLocation(self.postal_code)

    return if location.nil?

    update_column :latitude, location.y
    update_column :longitude, location.x
    
  end 
  
end
