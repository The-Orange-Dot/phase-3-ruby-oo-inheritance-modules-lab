require 'pry'

class Artist
  extend Memorable::ClassMethod
  include Memorable::InstanceMethod
  extend Findable::ClassMethod
  include Paramable
  attr_accessor :name
  attr_reader :songs

  @@artists = []

  #The "super" keyword, placed inside a method, 
  #will tell that method to look up its behavior 
  #in the method of the same name that lives in 
  #the parent, or super, class.

  #MAKE SURE TO PLACE IT IN THE INITIALIZE 
  #IF YOU HAVE OTHER FUNCTIONS TO INITIALIZE
  def initialize
    super
    @songs = []
  end

  #USE THIS IN THE MODULES TO ACCESS ALL CLASS SPECIFIC NAMES!
  def self.all
    @@artists
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def add_songs(songs)
    songs.each { |song| add_song(song) }
  end

end
