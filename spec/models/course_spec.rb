require 'spec_helper'

describe Course do

  subject { Course.create(name: "Rails Bellevue") }

  its(:name) { should == "Rails Bellevue" }

  it "requires a name" do
   c = Course.new
   c.valid?.should be_false
  end

  it "has some enrollments" do
    andy    = Student.create(name: "Andy")
    sukumar = Student.create(name: "Sukumar")

    subject.students << andy
    subject.students << sukumar
    subject.students.count.should == 2
  end

end
