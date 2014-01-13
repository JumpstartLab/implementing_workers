require 'bundler/setup'
require 'resque'
require 'drink_jobs'

class Register
  def place_order(name, spec)
    Resque.enqueue(DrinkJobs::MakeDrink, name, spec)
  end

  def place_big_order(name, spec)
    1000.times do |i|
      Resque.enqueue(DrinkJobs::MakeDrink, name, spec + " number #{i}")
      sleep 1
    end
  end
end
