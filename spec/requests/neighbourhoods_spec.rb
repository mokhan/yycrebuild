require 'spec_helper'

describe "Neighbourhoods" do
  describe "GET /neighbourhoods" do
    it "should connect to the index page" do
      get neighbourhoods_path
      response.status.should be(200)
    end
  end
end
