require 'pry'

class Song
  attr_accessor :name, :genre, :artist, :new_artist_array, :new_genres_array, :genres_counter, :artists_counter

  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(name, artist, genre)
    self.name = name
    self.artist = artist
    self.genre = genre
    @@count = @@count + 1
    @@artists << artist
    @@genres << genre
  end

  def self.count
    return @@count
  end

  def self.artists
    #if one of these artists is a duplicate of one that was already in there, don't add it.
    @new_artist_array = []
    @@artists.each do |artist_name|
      if @new_artist_array.include?(artist_name)
        nil
      else
        @new_artist_array << artist_name
      end
    end
    return @new_artist_array
  end


  def self.genres
    @new_genres_array = []
    @@genres.each do |genre_name|
      if @new_genres_array.include?(genre_name)
        nil
      else
        @new_genres_array << genre_name
      end
    end
    return @new_genres_array
  end

  def self.genre_count
    #iterate over original genres class variable to get number of genres
    #iterate over the new genres array to get the genres themselves
    #somehow match them together - use new genres array to find number of times that word shows up in the class variable array genres
    genre_hash = Hash.new 0
      @@genres.each do |genre_init|
        genre_hash[genre_init] += 1
      end
    genre_hash
  end

  def self.artist_count
    #iterate over original genres class variable to get number of genres
    #iterate over the new genres array to get the genres themselves
    #somehow match them together - use new genres array to find number of times that word shows up in the class variable array genres
    artist_hash = Hash.new 0
    @@artists.each do |artist_init|
      artist_hash[artist_init] += 1
    end
    artist_hash
  end


end
