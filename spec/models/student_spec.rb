require 'spec_helper'

describe Student do

  it "should have a name" do
    s = Student.new(name: "tester")
    s.name.should == "tester"
    s.valid?.should be_true
  end

end
