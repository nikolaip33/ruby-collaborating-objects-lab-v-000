# class Artist
#   @@all = []
#   attr_accessor :name, :songs
#
#   def initialize(name)
#     @name = name
#     @songs = []
#   end
#
#   def self.all
#     @@all
#   end
#
#   def add_song(song)
#     @songs << song
#   end
#
#   # def self.find_or_create_by_name(name)
#   #   self.find(name) || self.create(name)
#   # end
#
#   def self.find_or_create_by_name(name)
#     if self.find(name).nil?
#       self.create(name)
#     else
#       self.find(name)
#     end
#   end
#
#   def self.find(name)
#     self.all.find {|artist| artist.name == name }
#   end
#
#
  # def self.create(name)
  #   self.new(name).tap {|artist| artist.save}
  # end
#
#   def save
#     @@all << self
#   end
#
#   def print_songs
#     songs.each {|song| puts song.name}
#   end
# end


class Artist

    attr_accessor :name, :songs, :artist

    @@all = []

    def initialize(name)
        @name = name
        @songs = []
    end

    def self.all
        @@all
    end

    def add_song(song)
        @songs << song unless @songs.include?(song)
    end
    
    def save
       @@all << self
    end

    def self.find_or_create_by_name(name)
        if artist = @@all.find {|artist| artist.name = name}
            artist
        else 
            self.new(name).save 
        end
    end

    def print_songs
        self.songs.each {|song| puts song.name }       
    end
    # binding.pry
end
