class Professor < ApplicationRecord
  has_many :courses, :dependent => :destroy
  # :dependent => :destroy this ensures if a professor is deleted no remaining resources are left behind
  has_many :sections, through: :courses

  validates :name, uniqueness: true
  # Note: validations are not pluralized **** if they are pluralized it will reult in and error under create
  validates :name, :length => {:in => 2..20}
  validates :name, format: { with: /\A[a-zA-Z\s]+\z/, message: "only allows letters" }
end
