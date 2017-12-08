class Section < ApplicationRecord
  belongs_to :course
  belongs_to :professor
  has_many :enrollments
  has_many :students, through: :enrollments

  validates :number, :length => { is: 4 }
  validates :number, :numericality => {:only_integer => true}
  validates :number, uniqueness: true
  validates :professor, presence: true
  validates :course, presence: true
  validates_associated :students
end
