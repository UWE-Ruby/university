require 'spec_helper'

describe Teacher do

  subject { Teacher.create(name: "Ivan Storck") }

  before :all do
    %w(Algebra Geometry History English).each do |course_name|
      course = Course.create(name: course_name)
      subject.courses << course
      subject.save!
    end
  end

  it "should have a name" do
    subject.name.should == "Ivan Storck"
  end

  it "has courses" do
    subject.courses.count.should == 4
  end

  it "can see a course roster" do
    %w(Andy Sukumar Neal Travis).each do |student_name|
      student = Student.create(name: student_name)
      Course.find_by_name("Algebra").students << student
    end

    a = subject.courses.find_by_name("Algebra")
    a.students.count.should == 4

  end

end
