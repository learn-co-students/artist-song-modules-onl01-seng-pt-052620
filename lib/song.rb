require 'pry'

class Song
  extend Memorable::ClassMethods  
    extend Findable::ClassMethods 
    include Memorable::InstanceMethods 
    include Paramable::InstanceMethods  
    
    
  attr_accessor :name
  attr_reader :artist

  @@songs = []

  def initialize
    super 
  end

  def self.all
    @@songs
  end

  def artist=(artist)
    @artist = artist
  end

end
