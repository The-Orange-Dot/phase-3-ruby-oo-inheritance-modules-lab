require 'pry'

class Song
  extend Memorable::ClassMethod
  include Memorable::InstanceMethod
  extend Findable::ClassMethod
  include Paramable
  attr_accessor :name
  attr_reader :artist

  @@songs = []

  #USE THIS IN THE MODULES TO ACCESS ALL CLASS SPECIFIC NAMES!
  def self.all
    @@songs
  end

  def artist=(artist)
    @artist = artist
  end

end
