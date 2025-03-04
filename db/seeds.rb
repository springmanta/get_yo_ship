# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
require 'open-uri'
puts "Cleaning database..."
Spaceship.destroy_all

puts "Creating spaceships..."
# millennium falcon
file = URI.parse("https://hips.hearstapps.com/hmg-prod/images/veh-ia-1751-1576604159.jpg?crop=0.583xw:0.658xh;0.207xw,0.220xh&resize=768:*").open
millennium_falcon = Spaceship.new(
  name: "Millennium Falcon",
  capacity: 6,
  price: 395,
  description: "What a piece of junk!"
)
millennium_falcon.photo.attach(
  io: file,
  filename: "veh-ia-1751-1576604159.jpg",
  content_type: "image/jpg"
)
millennium_falcon.save
puts "Created #{millennium_falcon.name}!"

# tie fighter
file = URI.parse("https://static1.srcdn.com/wordpress/wp-content/uploads/2020/05/TIE-Fighter-Facts-Featured.jpg").open
tie_fighter = Spaceship.new(
  name: "Tie Fighter",
  capacity: 2,
  price: 369,
  description: "The standard starfighter of the Imperial Navy."
)
tie_fighter.photo.attach(
  io: file,
  filename: "TIE-Fighter-Facts-Featured.jpg",
  content_type: "image/jpg"
)
tie_fighter.save
puts "Created #{tie_fighter.name}!"

# imperial star destroyer
file = URI.parse("https://lumiere-a.akamaihd.net/v1/images/Star-Destroyer_ab6b94bb.jpeg?region=0%2C0%2C1600%2C900").open
imperial_star_destroyer = Spaceship.new(
  name: "Imperial Star Destroyer",
  capacity: 57_853,
  price: 123_683,
  description: "One of the largest, most powerful Imperial vessels ever created."
)
imperial_star_destroyer.photo.attach(
  io: file,
  filename: "Star-Destroyer_ab6b94bb.jpeg",
  content_type: "image/jpeg"
)
imperial_star_destroyer.save
puts "Created #{imperial_star_destroyer.name}!"

# death star
file = URI.parse("https://lumiere-a.akamaihd.net/v1/images/Death-Star-I-copy_36ad2500.jpeg?region=0%2C0%2C1600%2C900").open
death_star = Spaceship.new(
  name: "Death Star",
  capacity: 2_499_738,
  price: 5_384_294,
  description: "A moon-sized space station with the ability to destroy an entire planet."
)
death_star.photo.attach(
  io: file,
  filename: "Death-Star-I-copy_36ad2500.jpeg",
  content_type: "image/jpeg"
)
death_star.save
puts "Created #{death_star.name}!"

# lambda shuttle
file = URI.parse("https://static.wikia.nocookie.net/boba-fett-open-seasons/images/7/74/ImperialShuttle-DB_.png/revision/latest?cb=20210213023539").open
lambda_shuttle = Spaceship.new(
  name: "Lambda-class T-4a shuttle",
  capacity: 17,
  price: 838,
  description: "A multi-purpose transport with a trihedral foil design used by the Galactic Empire."
)
lambda_shuttle.photo.attach(
  io: file,
  filename: "ImperialShuttle-DB_.png",
  content_type: "image/png"
)
lambda_shuttle.save
puts "Created #{lambda_shuttle.name}!"

# corellian corvette
file = URI.parse("https://preview.redd.it/cr90-corvette-aka-blockade-runner-v0-zwbd3547t1z91.jpg?width=1080&crop=smart&auto=webp&s=76157b543d04adea9e213080b1dabaeffb1eeffe").open
corellian_corvette = Spaceship.new(
  name: "Corellian Corvette",
  capacity: 600,
  price: 754,
  description: "A small, multi-purpose capital ship manufactured by Corellian Engineering Corporation."
)
corellian_corvette.photo.attach(
  io: file,
  filename: "cr90-corvette-aka-blockade-runner-v0-zwbd3547t1z91.jpg",
  content_type: "image/jpg"
)
corellian_corvette.save
puts "Created #{corellian_corvette.name}!"

# y-wing
file = URI.parse("https://lumiere-a.akamaihd.net/v1/images/Y-Wing-Fighter_0e78c9ae.jpeg?region=0%2C24%2C1536%2C768").open
y_wing = Spaceship.new(
  name: "Y-Wing Starfighter",
  capacity: 2,
  price: 506,
  description: "The Y-wing is a workhorse starfighter has been in use since the Clone Wars."
)
y_wing.photo.attach(
  io: file,
  filename: "Y-Wing-Fighter_0e78c9ae.jpeg",
  content_type: "image/jpeg"
)
y_wing.save
puts "Created #{y_wing.name}!"

# slave 1
file = URI.parse("https://i.jediinsider.com/g/generated/Toy-Photography/Shooting_The_Galaxy/Ships/SOTE/Slave1.__scaled_600.png").open
slave_one = Spaceship.new(
  name: "Slave 1",
  capacity: 6,
  price: 1_385,
  description: "A highly modified Firespray-Class patrol and attack ship originally designed for planetary law-enforcement and interdiction duty."
)
slave_one.photo.attach(
  io: file,
  filename: "Slave1.__scaled_600.png",
  content_type: "image/png"
)
slave_one.save
puts "Created #{slave_one.name}!\n"
puts "Finished the Get Yo Ship Seed!"
