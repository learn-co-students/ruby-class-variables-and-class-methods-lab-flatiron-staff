class Song
  attr_accessor :name, :artist, :genre 
  @@count = 0
  @@genres = []
  @@artists = []

  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@genres << genre
    @@artists << artist
    @@count +=1
  end
  
  def self.count
    @@count
  end
  
  def self.genres
    return @@genres.uniq
  end
  
  def self.artists
    return @@artists.uniq
  end

def self.genre_count
  frequencies = Hash.new(0)
  @@genres.each {|genre| frequencies[genre] += 1} 
  frequencies
end

def self.artist_count
  collection = Hash.new(0)
  @@artists.each {|artist| collection[artist] += 1} 
  collection
end

end