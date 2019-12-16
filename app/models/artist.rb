class Artist

  attr_reader :name, :years_experience

  @@all = []

  def initialize(name:, years_experience:)
    @name = name
    @years_experience = years_experience
    @@all << self
  end

  def paintings
    Painting.all.select { |painting| painting.artist == self }
  end

  def galleries
    paintings.map { |painting| painting.gallery }.uniq
  end

  def cities
    galleries.map { |gallery| gallery.city }
  end

  def create_painting(title:, price:, gallery:)
    Painting.new(title: title, price: price, gallery: gallery, artist: self)
  end

# class methods

  def self.all
    @@all
  end

  def self.total_experience
    self.all.map { |artist| artist.years_experience }.reduce(:+)
  end

  def self.most_prolific
    self.all.max_by { |artist| (artist.paintings.count / artist.years_experience.to_f) }
  end


end
