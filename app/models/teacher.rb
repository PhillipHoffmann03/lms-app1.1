class Teacher < ApplicationRecord
    belongs_to :user
    has_many :courses
    has_many :course_classes
    has_many :exams, foreign_key: :invigilator_id
  end
  