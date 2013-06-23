require "spec_helper"

describe NeighbourhoodsHelper do
  it "should return 'evac'" do
    neighbourhood = OpenStruct.new(:status => "Evacuated")
    result = helper.css_class_for(neighbourhood)
    result.should == 'evac'
  end
end
