require 'spec_helper'

describe ResourcesController do
  describe :index do
    it "should load each resource" do
      resource = Resource.create!(title: 'Facebook', link: "http://www.facebook.com", description: "Everyone posts stuff on FB")
      get :index
      assigns(:resources).should include(resource)
    end
  end
end
