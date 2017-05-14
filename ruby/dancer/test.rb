class Dancer
  attr_accessor :age, :card, :name


	def initialize(given_name, given_age)
		@name = given_name
    @age = given_age
    @card = []
	end

  def queue_dance_with(queue_name)
    @card.push(queue_name)
  end

  def begin_next_dance
    puts "Now dancing with #{@card[0]}"
    @card.delete_at(0)
  end

  def pirouette
    puts "*twirls*"
  end

  def bow
    puts "*bow*"
  end


end

dancer = Dancer.new("Misty Copeland", 33)
p dancer.age
dancer.age = 34
p dancer.age
dancer.pirouette
dancer.bow

dancer.queue_dance_with("Mikhail Baryshnikov")
p dancer.card
dancer.queue_dance_with("Anna Pavlova")
p dancer.card

dancer.begin_next_dance
p dancer.card
