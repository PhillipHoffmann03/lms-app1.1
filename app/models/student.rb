class Student < ApplicationRecord
    belongs_to :user
    belongs_to :parent
    has_many :attendances
    has_many :reports
    has_many :submissions
    has_many :results
  end
  