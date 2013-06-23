require "spec_helper"

describe NeighbourhoodsController do
  describe "routing" do

    it "routes to #index" do
      get("/neighbourhoods").should route_to("neighbourhoods#index")
    end
  end
end
