class Log
  attr_accessor :species, :date, :location

  def initialize(species, date, location)
    @species = species
    @date = date
    @location = location
  end

  def to_s
    return "#{@species} | #{@date} | #{@location}"
  end

end

bird = Log.new("bird", "today", "here")
pp bird.to_s
