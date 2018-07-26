class Song 
  
  @@count = 0
  @@genre = []
  
  attr_accessor :name, :artist, :genre
  
  def initialize(name, artist, genre) 
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genre << genre.downcase
  end 
  
  def self.count
    @@count 
  end 
  
  def self.unique_genre
    puts @@uniquegenre = @@genre.uniq
  end
  
  def self.genre_count
    genre_count = {}
    @@genre.each do |x|
      if genre_count[x]
        genre_count[x] +=1
      else genre_count[x] = 1
        
      end
    end
    puts genre_count
  end 
  
end 

song1 = Song.new("Hello", "Adele", "Pop")
song2 = Song.new("Fairytale", "Taylor Swift", "Pop")
song3 = Song.new("Stairway to Heaven", "Led Zepelin", "Rock")
puts Song.count
Song.genre_count
Song.unique_genre
