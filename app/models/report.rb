class Report < ApplicationRecord
    belongs_to :student
    belongs_to :course
  end
  