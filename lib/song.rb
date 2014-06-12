class Song

  attr_reader :price
  attr_accessor :duration

  def initialize(title, artist_name, duration, price)
    @title = title
    @artist_name = artist_name
    @duration = duration
    @price = price
  end
end
