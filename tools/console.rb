require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

Mine = Cult.new("Mine", "NY", "2010", "mine mine mine")
Bonesaw = Cult.new("Bonesaw", "Chicago", "2008", "Cutting Bone")
Dave = Follower.new("Dave", 22, "Cutting Bone 4 Lyfe")
Gordon = Follower.new("Gordon", 30, "Doing stuff")
Dave.join_cult(Bonesaw)
Bonesaw.recruit_follower(Gordon)

# BloodOath.all

# BloodOath.all 
# Cult.find_by_name("Bonesaw")
# BloodOath.initiation_date(Dave, Bonesaw)
# p Cult.find_by_location("Chicago")
# p Cult.find_by_finding_year("2008")
p Follower.of_a_certain_age(30)


# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

# binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits
