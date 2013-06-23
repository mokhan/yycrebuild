require 'spec_helper'

describe NeighbourhoodsController do
  describe :index do
    it "should load each neighbourhood" do
      neighbourhood = Neighbourhood.create!(:name => 'sunnyside', :status => "red")
      get :index
      assigns(:neighbourhoods).should include(neighbourhood)
    end
  end
end
