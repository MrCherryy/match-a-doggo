class Dog < ApplicationRecord
  belongs_to :user
  has_many :matches
  has_one_attached :photo

  validates :name, :photo, :breed, :birthdate, :gender, :pedigree, :address, presence: true

  def age
    year = ((Time.zone.now - birthdate.to_time) / 1.year.seconds).floor
    month = ((Time.zone.now - year - birthdate.to_time) / 1.month.seconds).floor
    { year: year, month: month }
  end
end
