class Seeder

  def self.seed
    images
    tags
    taggings
    ratings
  end

  def self.images
    Image.create description: 'Image #1'
    Image.create description: 'Image #2'
    Image.create description: 'Image #3'
    Image.create description: 'Image #4'
    Image.create description: 'Image #5'
    Image.create description: 'Image #6'
  end

  def self.tags
    Tag.create name: 'tag1'
    Tag.create name: 'tag2'
    Tag.create name: 'tag3'
  end

  def self.taggings
    image1 = Image.get(1)
    image2 = Image.get(2)
    image3 = Image.get(3)
    image4 = Image.get(4)
    tag1 = Tag.get(1)
    tag2 = Tag.get(2)
    tag3 = Tag.get(3)

    Tagging.create(image: image1, tag: tag1)
    Tagging.create(image: image2, tag: tag1)
    Tagging.create(image: image2, tag: tag2)
    Tagging.create(image: image3, tag: tag3)
    Tagging.create(image: image4, tag: tag2)
  end

  def self.ratings
    image1 = Image.get(1)
    Rating.create(image: image1, value: 4)
    Rating.create(image: image1, value: 2)
    Rating.create(image: image1, value: 5)
    Rating.create(image: image1, value: 1)

  end

end