require 'spec_helper'

describe Course do

  it "should have a name" do
    c = Course.new(name: "test course")
    c.name.should == "test course"
    c.valid?.should be_true
  end

end
