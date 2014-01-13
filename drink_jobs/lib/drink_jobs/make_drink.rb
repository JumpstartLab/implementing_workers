module DrinkJobs
  class MakeDrink
    @queue = 'drinks'

    def self.perform(name, spec)
      puts "Starting to make a drink for #{name} with instruction \"#{spec}\""
      sleep 2
    end
  end
end
