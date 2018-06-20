require 'pry'
class Artist 
  attr_accessor :name 
  def initialzie(name)
    @name = name 
  end
  binding.pry
end