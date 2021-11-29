class Dog < ApplicationRecord
  belongs_to :user
  has_many :messages
  has_one_attached :photo
  before_save :default_matchable

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  GENDER = %w[female male]
  validates :gender, presence: true, inclusion: { in: GENDER }
  validates :name, :photo, :breed, :birthdate, :pedigree, :address, presence: true

  def age
    year = ((Time.zone.now - birthdate.to_time) / 1.year.seconds).floor
    month = ((Time.zone.now - birthdate.to_time) / 1.month.seconds).floor - (year * 12)
    { year: year, month: month }
  end

  def self.filter_all(dog)
    Dog.where(matchable: true).where.not(gender: dog.gender).where(breed: dog.breed).where.not(id: Match.where(matching_dog: dog).or(Match.where(matched_dog: dog)).pluck(:matched_dog_id))
  end

  def default_matchable
    self.matchable = true if matchable.nil?
  end

  def matches
    Match.where(matching_dog_id: id).or(Match.where(matched_dog_id: id))
  end
end
