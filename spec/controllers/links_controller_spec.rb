require 'spec_helper'

describe LinksController do
  describe :index do
    it "should load each resource" do
      link = Link.create!(title: 'Facebook', url: "http://www.facebook.com", description: "Everyone posts stuff on FB")
      get :index
      assigns(:links).should include(link)
    end
  end
end
