class Result < ApplicationRecord
    belongs_to :student
    belongs_to :course
    belongs_to :exam
  end
  