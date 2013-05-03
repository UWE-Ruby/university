require 'spec_helper'

describe Teacher do

  it "should have a name" do
    t = Teacher.new(name: "tester teacher")
    t.name.should == "tester teacher"
    t.valid?.should be_true
  end

end
