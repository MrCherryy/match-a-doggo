class Dog < ApplicationRecord
  belongs_to :user
  has_many :matches

  validates :name, :breed, :birthdate, :gender, :pedigree, :address, presence: true

  GENDER = %w[male female]

  # simple form per scegliere il gender
  # <%= simple_form_for do |f| %>
  # <%= f.select Dog::GENDER %>

  def age
    year = ((Time.zone.now - birthdate.to_time) / 1.year.seconds).floor
    month = ((Time.zone.now - year - birthdate.to_time) / 1.month.seconds).floor
    { year: year, month: month }
  end

  def self.of_gender(gender)
    Dog.where(gender: gender)
  end
end
