require 'pry'
require_relative '../lib/concerns/memorable'
require_relative '../lib/concerns/paramable'

class Song
  extend Memorable::ClassMethods
  include Paramable::IntsanceMethods

  attr_accessor :name
  attr_reader :artist

  @@songs = []

  def initialize
    @@songs << self
  end

  def self.find_by_name(name)
    @@songs.detect{|a| a.name == name}
  end



  def self.count
    self.all.count
  end

  def artist=(artist)
    @artist = artist
  end


end
