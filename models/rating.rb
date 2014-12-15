class Rating
  include DataMapper::Resource

  property :id, Serial
  property :value, Integer

  belongs_to :image

  validates_numericality_of :value, gte: 1, lte: 5, message: 'Rating must be between 1 and 5'


end