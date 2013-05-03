class Course < ActiveRecord::Base
  has_one :teacher
  has_many :students

  validates :name, presence: true, uniqueness: true
end
