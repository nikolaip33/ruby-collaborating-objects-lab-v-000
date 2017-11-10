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

attr_accessor :name, :song, :songs
 @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def save
    @@all << self
  end

  # def self.find_or_create_by_name(name)
  #   if self.find(name).nil?
  #     self.create(name)
  #   else
  #     self.find(name)
  #   end
  # end

  def self.find_or_create_by_name(name)
    # @@all.detect {|artist| artist.name == name } ? @@all.detect {|artist| artist.name == name } : self.new(name).tap { |a| a.save }
    @@all.detect {|artist| artist.name == name } if @@all.detect {|artist| artist.name == name } || self.new(name).tap { |a| a.save }
    # if artist = @@all.detect {|artist| artist.name == name }
    #   artist
    # else
    #   self.create(name)
    # end
  end

  def self.create(name)
    artist = self.new(name)
    artist.save
    artist
  end

  def self.find(name)
    self.all.detect { |artist| artist.name == name }
  end

  def print_songs
    self.songs.each { |song| puts song.name}
  end

  def add_song(song)
    @songs << song
  end

  def self.all
    @@all
  end
end
