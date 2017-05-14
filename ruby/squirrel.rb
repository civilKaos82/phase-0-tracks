class Squirrel
  attr_accessor :location, :hoard_locations
  attr_reader :color


  def initialize(color, location)
    @color = color
    @location = location
    @hibernate = true
    @hoard_locations = {}

  end

  def wake_up
    puts "The squirrel has woken up!"
    @hibernate = false
  end

  def sleep
    puts "The squirrel has fallen asleep."
    @hibernate = true
  end

  def store_food (hoard_locations_input, nuts_quantity)
    if @hoard_locations.has_key?(hoard_locations_input) == true
      interim_nut_quantity = nuts_quantity + @hoard_locations[hoard_locations_input]
      @hoard_locations[hoard_locations_input] = interim_nut_quantity
    else
      @hoard_locations[hoard_locations_input] = nuts_quantity
    end
  end

  def eat_something
    @hibernate = false
    hoard_locations_array = @hoard_locations.keys
    @hoard_locations[hoard_locations_array.sample] -= 3
    @hibernate = true
  end

end

squirrelly_array = []
squirrel_colors = ["red", "grey", "black", "albino"]
squirrel_origin = ["the city", "the country", "the suburbs", "mars"]

squirrelly_squirl = Squirrel.new(squirrel_colors.sample, squirrel_origin.sample)


p squirrelly_squirl

squirrelly_squirl.store_food("barn", 6)
p squirrelly_squirl
squirrelly_squirl.store_food("barn", 7)
p squirrelly_squirl
squirrelly_squirl.eat_something
p squirrelly_squirl
