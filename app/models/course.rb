class Course < ApplicationRecord
  has_many :sections, :dependent => :destroy

  validates :name, :length => {:maximum => 20}
  validates :name, format: { with: /\A[a-zA-Z\s]+\z/,message: "no numbers allowed, only letters"}
  validates :name, uniqueness: true

end
