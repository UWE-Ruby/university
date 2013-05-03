class Course < ActiveRecord::Base
  has_one :teacher
  has_many :enrollments
  has_many :students, through: :enrollments

  validates :name, presence: true, uniqueness: true
end
