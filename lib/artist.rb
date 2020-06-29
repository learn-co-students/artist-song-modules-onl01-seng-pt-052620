require 'pry'

class Artist
  extend Memorable::ClassMethods
  extend Findable::ClassMethods
  include Paramable::InstanceMethods

  attr_accessor :name
  attr_reader :songs

  @@artists = []

  def initialize
    @@artists << self #adds current artist to artists array
    @songs = []
  end

  def self.find_by_name(name) #goes through array of all artists and finds the one
    @@artists.detect{|a| a.name == name} #whose name is the current instances
  end

  def self.all #returns array of all artists
    @@artists
  end

  def add_song(song) #takes song as argument
    @songs << song #adds song to songs array
    song.artist = self #associates song with current artist(self)
  end

  def add_songs(songs)
    songs.each { |song| add_song(song) } #iterates through all songs and for each one, adds song?
  end

  #def to_param
    #name.downcase.gsub(' ', '-') #takes a string, makes it lowercase, replaces " " with "-"
  #end
end
