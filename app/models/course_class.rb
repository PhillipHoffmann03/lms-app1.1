class CourseClass < ApplicationRecord
    belongs_to :course
    belongs_to :teacher
    has_many :students, through: :attendances
    has_many :assignments
    has_many :attendances
  end
  