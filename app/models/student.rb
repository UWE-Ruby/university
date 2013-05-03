class Student < ActiveRecord::Base
  belongs_to :course
  has_many :teachers, through: :courses

  validates :name, presence: true
end
