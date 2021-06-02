class Airport

	attr_reader :name, :planes

	def initialize(name)
		@name = name
		@planes = []
	end

	def add_plane plane
		@planes << plane
	end

end

class Plane
	attr_reader :model

	def initialize(model)
		@model = model
	end
end

# array for airports
airports = []

# making 2 airports
airport1 = Airport.new "SVO"
airport2 = Airport.new "KZN"

# writing in array
airports << airport1
airports << airport2

# add plane in airport1
plane1 = Plane.new "Airbus"
plane2 = Plane.new "Boeing"
plane3 = Plane.new "IL-76"

airport1.add_plane plane1
airport1.add_plane plane2
airport1.add_plane plane3

# add plane in airport2
plane2_1 = Plane.new "Blablabla"
plane2_2 = Plane.new "Hsms"
plane2_3 = Plane.new "Ololo"
plane2_4 = Plane.new "XXasq"

airport2.add_plane plane2_1
airport2.add_plane plane2_2
airport2.add_plane plane2_3
airport2.add_plane plane2_4

# show information about airports and planes
airports.each do |airport|
	puts "#{airport.name}"

	puts "Planes in this airport:"
	
	airport.planes.each do |plane|
		puts "#{plane.model}"
  	end

  	puts "========================="
end