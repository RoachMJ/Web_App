class Student < ApplicationRecord
  has_many :enrollments
  has_many :sections, through: :enrollments

  validates :name, presence: true, length: {maximum: 15, minimum: 4}
  validates :email, uniqueness: true, presence: true, length: {maximum: 30, minimum: 15}, format: /@/
  validates :student_number, presence: true, :length => { is: 9 },:numericality => {:only_integer => true}
  validates_associated :sections

end
