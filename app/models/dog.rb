class Dog < ApplicationRecord
  belongs_to :user
  has_many :matches

  validates :name, :breed, :age, :gender, :pedigree, :address, presence: true
end
