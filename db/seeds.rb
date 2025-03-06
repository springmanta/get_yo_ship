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
# x-wing

ship_images = ["https://lumiere-a.akamaihd.net/v1/images/X-Wing-Fighter_47c7c342.jpeg?region=0%2C96%2C1536%2C769",
"https://static.wikia.nocookie.net/starwars/images/5/57/Black_One_BF2.png/revision/latest?cb=20170825000542",
"https://cdnb.artstation.com/p/assets/images/images/043/184/635/large/charles-woods-xwingwoody151.jpg?1636548531"]
x_wing = Spaceship.new(
  name: "X-Wing",
  capacity: 1,
  price: 217,
  description: "A versatile Rebel Alliance starfighter that balances speed with firepower.",
  made_by: "Incom-FreiTek Corporation",
  ship_class: "Space superiority fighter",
  max_speed: 1050
)
ship_images.each_with_index do |image, index|
  file = URI.parse(image).open
  x_wing.photos.attach(
    io: file,
    filename: "#{x_wing.name + index.to_s}.jpg",
    content_type: "image/jpg"
  )
end
x_wing.save
puts "Created #{x_wing.name}!"

# millennium falcon
ship_images = ["https://hips.hearstapps.com/hmg-prod/images/veh-ia-1751-1576604159.jpg?crop=0.583xw:0.658xh;0.207xw,0.220xh&resize=768:*",
"https://media.coaster.cloud/attractions/7T/aw/7TawfcCEHGbwtPyKqyXvCp.jpg?class=large",
"https://lumiere-a.akamaihd.net/v1/images/millennium-falcon-main-tlj-a_7cf89d3a.jpeg?region=56%2C0%2C960%2C720"]
millennium_falcon = Spaceship.new(
  name: "Millennium Falcon",
  capacity: 6,
  price: 395,
  description: "What a piece of junk!",
  made_by: "Corellian Engineering Corporation",
  ship_class: "YT-1300F light freighter",
  max_speed: 1050
)
ship_images.each_with_index do |image, index|
  file = URI.parse(image).open
  millennium_falcon.photos.attach(
    io: file,
    filename: "#{millennium_falcon.name + index.to_s}.jpg",
    content_type: "image/jpg"
  )
end
millennium_falcon.save
puts "Created #{millennium_falcon.name}!"

# tie fighter
ship_images = ["https://static1.srcdn.com/wordpress/wp-content/uploads/2020/05/TIE-Fighter-Facts-Featured.jpg",
"https://s3-us-west-2.amazonaws.com/media.brothers-brick.com/2022/05/TieFighter-FukuSaku.jpg",
"https://lumiere-a.akamaihd.net/v1/images/first-order-tie-fighter_a795ceaf.jpeg?region=166%2C0%2C1716%2C858"]
tie_fighter = Spaceship.new(
  name: "Tie Fighter",
  capacity: 2,
  price: 369,
  description: "The standard starfighter of the Imperial Navy.",
  made_by: "Sienar Fleet Systems",
  ship_class: "Starfighter",
  max_speed: 1200
)
ship_images.each_with_index do |image, index|
  file = URI.parse(image).open
  tie_fighter.photos.attach(
    io: file,
    filename: "#{tie_fighter.name + index.to_s}.jpg",
    content_type: "image/jpg"
  )
end
tie_fighter.save
puts "Created #{tie_fighter.name}!"

# imperial star destroyer
ship_images = ["https://lumiere-a.akamaihd.net/v1/images/Star-Destroyer_ab6b94bb.jpeg?region=0%2C0%2C1600%2C900",
"https://static1.srcdn.com/wordpress/wp-content/uploads/2020/01/Star-Wars-Ships-Star-Destroyer.jpg",
"https://preview.redd.it/republic-imperator-class-star-destroyer-v0-d3s6e2ektqya1.png?width=640&crop=smart&auto=webp&s=aac10da63a0ba593b814972b759c7f6b3876c3f7"]

imperial_star_destroyer = Spaceship.new(
  name: "Imperial Star Destroyer",
  capacity: 57_853,
  price: 123_683,
  description: "One of the largest, most powerful Imperial vessels ever created.",
  made_by: "Kuat Drive Yards",
  ship_class: "Star Destroyer",
  max_speed: 975
)
ship_images.each_with_index do |image, index|
  file = URI.parse(image).open
  imperial_star_destroyer.photos.attach(
    io: file,
    filename: "#{imperial_star_destroyer.name + index.to_s}.jpg",
    content_type: "image/jpg"
  )
end
imperial_star_destroyer.save
puts "Created #{imperial_star_destroyer.name}!"

# death star
ship_images = ["https://lumiere-a.akamaihd.net/v1/images/Death-Star-I-copy_36ad2500.jpeg?region=0%2C0%2C1600%2C900",
"https://images.squarespace-cdn.com/content/v1/5fbc4a62c2150e62cfcb09aa/1630054113635-NHT9GN21GJW4GCQO05EB/BOY_SWR_cover-.png",
"https://www.thesun.co.uk/wp-content/uploads/2024/11/luke-skywalker-joins-forces-jedi-905160574.jpg?strip=all&w=960"]
death_star = Spaceship.new(
  name: "Death Star",
  capacity: 2_499_738,
  price: 5_384_294,
  description: "A moon-sized space station with the ability to destroy an entire planet.",
  made_by: "Imperial Military Department of Advanced Weapons Research",
  ship_class: "DS-1 Death Star Mobile Battle Station",
  max_speed: 1500
)
ship_images.each_with_index do |image, index|
  file = URI.parse(image).open
  death_star.photos.attach(
    io: file,
    filename: "#{death_star.name + index.to_s}.jpg",
    content_type: "image/jpg"
  )
end
death_star.save
puts "Created #{death_star.name}!"

# lambda shuttle
ship_images = ["https://static.wikia.nocookie.net/boba-fett-open-seasons/images/7/74/ImperialShuttle-DB_.png/revision/latest?cb=20210213023539",
"https://pm1.aminoapps.com/6508/44accab02075a1d3df537fcef11497c528b7f0f5_hq.jpg",
"https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhPEoHj2_OkrCvlOIgDuXhG6aOPNifG2AUdJecaEiGBX2v5cpJcExigzS80YgUqX9uWv1Ot3GjgTMIy5SEEfZuQiXXV812sxu8rB5ktIgvFb0btbJ3LnHQC7flHO4RVGYieXya4BLnGaA/s1600/eparrival.jpg"]
lambda_shuttle = Spaceship.new(
  name: "Lambda-class T-4a shuttle",
  capacity: 17,
  price: 838,
  description: "A multi-purpose transport with a trihedral foil design used by the Galactic Empire.",
  made_by: "Cygnus Space Workshops",
  ship_class: "T-5 Deliverance",
  max_speed: "850"
)
ship_images.each_with_index do |image, index|
  file = URI.parse(image).open
  lambda_shuttle.photos.attach(
    io: file,
    filename: "#{lambda_shuttle.name + index.to_s}.jpg",
    content_type: "image/jpg"
  )
end
lambda_shuttle.save
puts "Created #{lambda_shuttle.name}!"

# corellian corvette
ship_images = ["https://preview.redd.it/cr90-corvette-aka-blockade-runner-v0-zwbd3547t1z91.jpg?width=1080&crop=smart&auto=webp&s=76157b543d04adea9e213080b1dabaeffb1eeffe",
"https://swrpggm.com/wp-content/uploads/2021/02/CorellianCR90_FE.png",
"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/f2e0f812-760e-426d-8792-fe53817ccbd3/dc7r0st-a74472ce-8092-401a-ba8c-9635e78cceba.png/v1/fill/w_1280,h_640,q_80,strp/corellian_cr90_corvette_by_jetfreak_7_dc7r0st-fullview.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9NjQwIiwicGF0aCI6IlwvZlwvZjJlMGY4MTItNzYwZS00MjZkLTg3OTItZmU1MzgxN2NjYmQzXC9kYzdyMHN0LWE3NDQ3MmNlLTgwOTItNDAxYS1iYThjLTk2MzVlNzhjY2ViYS5wbmciLCJ3aWR0aCI6Ijw9MTI4MCJ9XV0sImF1ZCI6WyJ1cm46c2VydmljZTppbWFnZS5vcGVyYXRpb25zIl19.D0OU0btXtdtqZJSum_zc1ltvFw2F8hr1SWCtMfI1cSM"]
corellian_corvette = Spaceship.new(
  name: "Corellian Corvette",
  capacity: 600,
  price: 754,
  description: "A small, multi-purpose capital ship manufactured by Corellian Engineering Corporation.",
  made_by: "Corellian Engineering Corporation",
  ship_class: "Alderaanian diplomatic cruiser",
  max_speed: 950
)
ship_images.each_with_index do |image, index|
  file = URI.parse(image).open
  corellian_corvette.photos.attach(
    io: file,
    filename: "#{corellian_corvette.name + index.to_s}.jpg",
    content_type: "image/jpg"
  )
end
corellian_corvette.save
puts "Created #{corellian_corvette.name}!"

# y-wing
ship_images = ["https://lumiere-a.akamaihd.net/v1/images/Y-Wing-Fighter_0e78c9ae.jpeg?region=0%2C24%2C1536%2C768",
"https://i0.wp.com/overmental.com/wp-content/uploads/2015/09/Y-Wing.jpg?fit=1177%2C657&ssl=1",
"https://cdn.svc.asmodee.net/production-amgcom/uploads/2022/07/SWZ86-Websiteimage.jpg"]
y_wing = Spaceship.new(
  name: "Y-Wing Starfighter",
  capacity: 2,
  price: 506,
  description: "The Y-wing is a workhorse starfighter has been in use since the Clone Wars.",
  made_by: "Koensayr Manufacturing",
  ship_class: "Starfighter/Bomber",
  max_speed: 1000
)
ship_images.each_with_index do |image, index|
  file = URI.parse(image).open
  y_wing.photos.attach(
    io: file,
    filename: "#{y_wing.name + index.to_s}.jpg",
    content_type: "image/jpg"
  )
end
y_wing.save
puts "Created #{y_wing.name}!"

# slave 1
ship_images = ["https://i.jediinsider.com/g/generated/Toy-Photography/Shooting_The_Galaxy/Ships/SOTE/Slave1.__scaled_600.png",
"https://static1.srcdn.com/wordpress/wp-content/uploads/2020/12/Boba-Fett-Slave-1-Feature.jpeg",
"https://static1.cbrimages.com/wordpress/wp-content/uploads/2016/11/Slave-1-star-wars.jpg"]
slave_one = Spaceship.new(
  name: "Slave 1",
  capacity: 6,
  price: 1_385,
  description: "A highly modified ship originally designed for planetary law-enforcement and interdiction duty.",
  made_by: "Kuat Systems Engineering",
  ship_class: "Firespray-31-class patrol and attack craft",
  max_speed: 1000
)
ship_images.each_with_index do |image, index|
  file = URI.parse(image).open
  slave_one.photos.attach(
    io: file,
    filename: "#{slave_one.name + index.to_s}.jpg",
    content_type: "image/jpg"
  )
end
slave_one.save
puts "Created #{slave_one.name}!\n"
puts "Finished the Get Yo Ship Seed!"

Spaceship.all.each do |spaceship|
  spaceship.availabilities.create(start_date: '2025-03-01', end_date: '2025-03-31')
  spaceship.availabilities.create(start_date: '2025-05-01', end_date: '2025-05-31')
end
