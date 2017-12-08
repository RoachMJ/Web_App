class Professor < ApplicationRecord
  has_many :sections#, :dependent => :destroy
  # :dependent => :destroy this ensures if a professor is deleted no remaining resources are left behind
  has_many :courses, through: :sections

  validates :name, uniqueness: true
  # Note: validations are not pluralized **** if they are pluralized it will result in an error under create
  validates :name, :length => {:in => 5..20}
  validates :name, format: { with: /\A[a-zA-Z\s]+\z/ , message: "Name must consist of letters only, No numbers!" }
end
