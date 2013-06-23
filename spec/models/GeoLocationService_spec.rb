require 'spec_helper'

describe GeoLocationService do
	it "can get a location" do
		result = GeoLocationService.GetGeoLocation("Stampede Grounds, Calgary, Alberta")
		result.should_not be_nil
		result.should be_an_instance_of(GeoLocation)
	end
	
	it "can get a correction location" do
		result = GeoLocationService.GetGeoLocation("Stampede Grounds, Calgary, Alberta")
		result.should_not be_nil
		result.x.should_not be_nil
		
	end
	
	it "can get a location data" do
		result = GeoLocationService.GetGeoLocationData("Stampede Grounds, Calgary, Alberta")
		result.should_not be_nil
	end
	
	it "can parse json result to get geolocation" do
		json = GeoLocationService.GetGeoLocationData("Stampede Grounds, Calgary, Alberta")
		result = GeoLocationService.ExtractGeoLocationFromJson(json)
		result.should_not be_nil
		result.should be_an_instance_of(GeoLocation)
	end
	
	it "can get correct geo location for stampede grounds" do
		result = GeoLocationService.GetGeoLocation("Stampede Grounds, Calgary, Alberta")
		result.should be_an_instance_of(GeoLocation)
		result.x.should be_within(0.0001).of(-114.0630194)
		result.y.should be_within(0.0001).of(51.045220523)
	end
	
	it "can look up by address" do
		result = GeoLocationService.GetGeoLocation("200 E Randolph St, Chicago, IL")
		result.should be_an_instance_of(GeoLocation)
		result.x.should be_within(0.0001).of(-87.6221405679)
		result.y.should be_within(0.0001).of(41.8845104628)
	end
end
