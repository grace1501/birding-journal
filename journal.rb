require "./log"

class Journal
  def initialize
    first_row = Log.new("Species", "Date", "Location")

    @logs = [first_row]

  end

  def logs 
    return @logs
  end

  def open
    puts "Welcome to Birding Journal. Log the date, location, and species you see, easily access all your birding records for future reference."
    
    loop do
      puts "\nChoose an option below:"
      puts "1. Add a log"
      puts "2. View all birding logs"
      puts "3. Delete a log"
      puts "4. Exit"
      print "Your choice is: "
      option = gets.chomp.to_i
      puts "\n"

      case option
        when 1
          add_log
        when 2
          view_journal
        when 3
          delete_log
        when 4
          puts "Thank you for using Birding Journal. See you again soon!"
          break
        else
          "Sorry, I don't understand. Please try again."
      end

    end

  end

  def add_log
    print "Enter the bird name: "
    species = gets.chomp
    print "Enter the date in YYYY/MM/DD format: "
    date = gets.chomp
    print "Enter the location: "
    location = gets.chomp

    bird = Log.new(species, date, location)
    @logs.push(bird)  
    puts "New sighting logged!"
  end

  def delete_log
    puts "Current journal logs: "
    @logs.each_with_index { |log, i|
      puts "#{i}. #{log}"
    }
    print "Type the number of the log to delete: "
    input = gets.chomp.to_i

    deleted_log = @logs.delete_at(input)
    puts "You have deleted this log: #{deleted_log}"

  end

  def view_journal
    puts "Birding journal logs: "
    @logs.each { |log|
      puts log
    }
  end

end
