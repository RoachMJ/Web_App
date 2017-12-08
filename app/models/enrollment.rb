class Enrollment < ApplicationRecord
  belongs_to :section
  belongs_to :student

  validates :section, presence: true
  validates :student, presence: true
end
