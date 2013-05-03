require 'spec_helper'

describe Teacher do

  subject { Teacher.create(name: "Ivan Storck") }

  it "should have a name" do
    subject.name.should == "Ivan Storck"
  end

  it "has courses" do
    %w(Algebra Geometry History English).each do |course_name|
      course = Course.create(name: course_name)
      subject.courses << course
    end

    subject.courses.count.should == 4
  end

  it "can see a course roster"

end
