class Dog < ApplicationRecord
  belongs_to :user
  has_many :matches
  has_one_attached :photo
  before_save :default_matchable

  GENDER = %w[female male]
  validates :gender, presence: true, inclusion: { in: GENDER }
  validates :name, :photo, :breed, :birthdate, :pedigree, :address, presence: true

  def age
    year = ((Time.zone.now - birthdate.to_time) / 1.year.seconds).floor
    month = ((Time.zone.now - birthdate.to_time) / 1.month.seconds).floor - (year * 12)
    { year: year, month: month }
  end

  def self.filter_all(gender, user_id)
    Dog.where.not(gender: gender) && Dog.where.not(user_id: user_id)
  end

  def default_matchable
    self.matchable = true if matchable.nil?
  end
end
