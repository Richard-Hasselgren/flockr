class Tagging
  include DataMapper::Resource

  belongs_to :image, key: true
  belongs_to :tag, key:   true


end