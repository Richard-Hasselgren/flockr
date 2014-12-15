class Image
  include DataMapper::Resource

  property :id, Serial
  property :description, String

  has n, :ratings
  has n, :taggings
  has n, :tags, through: :taggings


end