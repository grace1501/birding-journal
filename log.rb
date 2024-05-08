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

# sparrow_log = Log.new("sparrow", "today", "backyard")
# hawk_log = Log.new("hawk", "2024-05-08", "city park")

# pp sparrow_log.to_s
# pp hawk_log.to_s
