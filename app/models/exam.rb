class Exam < ApplicationRecord
    belongs_to :course
    belongs_to :invigilator, class_name: 'Teacher', foreign_key: :invigilator_id
    has_many :results
  end
  