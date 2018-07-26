class Song 
  
  attr_accessor :name, :genre, :artist
  @@song_count = 0
  @@genres = []
  
  def initialize(name, artist, genre)
    @name = name
    @genre = genre
    @artist = artist 
    @@song_count += 1
    @@genres << genre 
  end 
  
  def self.genres_uniq 
    @@genres.uniq
  end
  
  def self.count 
    @@song_count 
  end 
  
  def self.genre_count
    genre_count = {}
    #add to our hash: genre_count[key] = value
    @@genres.each do |genre|
      if genre_count[genre]
        genre_count[genre] += 1
      else genre_count[genre] = 1
      end 
    end
    puts genre_count
  end
  
end 

song1 = Song.new("Hello", "Adele", "Pop")
song2 = Song.new("Personal","Kehlani", "R&B")
song3 = Song.new("Fairytale", "Taylor Swift", "Pop")
puts Song.genre_count
