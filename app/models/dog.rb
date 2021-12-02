class Dog < ApplicationRecord
  belongs_to :user
  has_many :matches
  has_many :messages
  has_one_attached :photo
  before_save :default_matchable


  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  BREED = %w[affenpinscher african airedale akita appenzeller australian-shepherd basenji beagle bluetick borzoi bouvier
             boxer brabancon briard buhund-norwegian bulldog-boston bulldog-english bulldog-french bullterrier-staffordshire
             cattledog-australian chihuahua chow clumber cockapoo collie-border coonhound corgi-cardigan cotondetulear
             dachshund dalmatian dane-great deerhound-scottish dhole dingo doberman elkhound-norwegian entlebucher eskimo
             finnish-lapphund frise-bichon germanshepherd greyhound-italian groenendael havanese hound-afghan hound-basset
             hound-blood hound-english hound-ibizan hound-plott hound-walker husky keeshond kelpie komondor kuvasz labradoodle
             labrador leonberg lhasa malamute malinois maltese mastiff-bull mastiff-english mastiff-tibetan mexicanhairless
             mix mountain-bernese mountain-swiss newfoundland otterhound ovcharka-caucasian papillon pekinese pembroke
             pinscher-miniature pitbull pointer-german pointer-germanlonghair pomeranian poodle-miniature poodle-standard
             poodle-toy pug puggle pyrenees redbone retriever-chesapeake retriever-curly retriever-flatcoated retriever-golden
             ridgeback-rhodesian rottweiler saluki samoyed schipperke schnauzer-giant schnauzer-miniature setter-english
             setter-gordon setter-irish sheepdogenglish shetland shiba shihtzu spaniel-blenheim spaniel-brittany spaniel-cocker
             spaniel-irish spaniel-japanese spaniel-sussex spaniel-welsh springer-english stbernard terrier-american
             terrier-australian terrier-bedlington terrier-border terrier-cairn terrier-dandie terrier-fox terrier-irish
             terrier-kerryblue terrier-lakeland terrier-norfolk terrier-norwich terrier-patterdale terrier-russell terrier-scottish
             terrier-sealyham terrier-silky terrier-tibetan terrier-toy terrier-welsh terrier-westhighland terrier-wheaten
             terrier-yorkshire tervuren vizsla waterdog-spanish weimaraner whippet wolfhound-irish]
  GENDER = %w[female male]
  validates :breed, presence: true, inclusion: { in: BREED }
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
