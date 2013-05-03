class Teacher < ActiveRecord::Base
  has_and_belongs_to_many :courses
  has_many :students, through: :courses

  validates :name, presence: true
end
