class Dog < ApplicationRecord
  belongs_to :user
  has_many :matches

  validates :name, :breed, :birthdate, :gender, :pedigree, :address, presence: true
end
