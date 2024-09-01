class Assignment < ApplicationRecord
    belongs_to :course_class
    has_many :submissions
  end
  