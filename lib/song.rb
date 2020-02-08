# require 'relative'

class Song
  attr_accessor :name
  attr_reader :artist
  
  @@songs = []

  def initialize
    @@songs << self
  end

  extend Memorable::ClassMethods
  extend Findable::ClassMethods
  include Memorable::InstanceMethods
  include Paramable::InstanceMethods

 
  def self.find_by_name(name)
    @@songs.detect{|a| a.name == name}
  end

  def self.all
    @@songs
  end


  def artist=(artist)
    @artist = artist
  end
end
