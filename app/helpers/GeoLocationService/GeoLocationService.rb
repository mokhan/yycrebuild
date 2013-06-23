# A service that can look up a geo-location from a string
# the api this is based on (ERSI) seems fairly robust and can
# take landmarks (Stampede Grounds) and street addresses.

# work by Chris Desmarais (codeshoulders@gmail.com)

require 'rest_client'
require 'open-uri'
require 'json'

class GeoLocationService

	def self.GetGeoLocation( locationString)
		return ExtractGeoLocationFromJson( GetGeoLocationData( locationString ) )
	end

	def self.GetGeoLocationData(locationString)
		urlAsString =  "http://geocode.arcgis.com/arcgis/rest/services/World/GeocodeServer/find?f=pjson&text="
		urlAsString += URI::encode(locationString)
		return RestClient.get urlAsString	
	end
	
	def self.ExtractGeoLocationFromJson( jsonString)
		parsed = JSON.parse(jsonString)
		
		# need to handle more than one match
		x = parsed["locations"][0]["feature"]["geometry"]["x"]
		y = parsed["locations"][0]["feature"]["geometry"]["y"]
		return GeoLocation.new( x, y)
	end
end

class GeoLocation

	attr_accessor :x, :y
	
	def initialize (x,y)
		@x = x
		@y = y
	end
end

