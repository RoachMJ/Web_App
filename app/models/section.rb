class Section < ApplicationRecord
  belongs_to :course
  belongs_to :professor

  validates :number, :length => { :is => 4 }
  validates :number, :numericality => {:only_integer => true}
  validates :number, uniqueness: true
end
