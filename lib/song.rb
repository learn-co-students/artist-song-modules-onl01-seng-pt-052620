require 'pry'

class Song
  attr_accessor :name
  attr_reader :artist

  extend Memorable::ClassMethods
  extend Findable
  include Memorable::InstanceMethods
  include Paramable


  @@all = []

  def self.all
    @@all
  end

  def artist=(artist)
    @artist = artist
  end

#  def to_param
#   name.downcase.gsub(' ', '-')
# end
end
