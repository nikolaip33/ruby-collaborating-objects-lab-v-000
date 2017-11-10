class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
          split_file_name_song = filename.split(" - ")[1]
          name = filename.split(" - ")[0]
          song = self.new(split_file_name_song)
          artist = Artist.find_or_create_by_name(name)
          artist.add_song(song)
          song
      end

  # def artist_name=(name)
  #   self.artist = Artist.find_or_create_by_name(name)
  #   self.artist.add_song(self)
  # end
end
