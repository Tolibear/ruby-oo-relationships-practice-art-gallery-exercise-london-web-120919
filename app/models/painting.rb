class Painting

  attr_reader :title, :price
  attr_accessor :artist, :gallery

  @@all = []

  def initialize(title:, price:, artist:, gallery:)
    @artist = artist
    @gallery = gallery
    @title = title
    @price = price
    @@all << self
  end


# class methods:

  def self.all
    @@all
  end

  def self.total_price
    self.all.map { |painting| painting.price }.reduce(:+)
  end

end
