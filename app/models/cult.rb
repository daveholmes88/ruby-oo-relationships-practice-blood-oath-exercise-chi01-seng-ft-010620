class Cult
    attr_reader :name, :location, :founding_year, :slogan

    @@all = []
    
    def initialize(name, location, founding_year, slogan)
        @name = name 
        @location = location
        @founding_year = founding_year
        @slogan = slogan
        @@all << self
    end 

    def self.all
        @@all
    end 

    def recruit_follower(follower_name)
        BloodOath.new(self, follower_name)
    end 

    def self.cult_population
        cult_array = BloodOath.all.select{ |blood_oath| bloodoath.cult == self}
        cult_array.count
    end 

    def self.find_by_name(cult_name)
        @@all.select { |all| all.name == cult_name}
    end 

    def self.find_by_location(location_name)
        @@all.select { |all| all.location == location_name}
    end 

    def self.find_by_finding_year(finding_year)
        @@all.select { |all| all.founding_year == finding_year}
        # binding.pry
    end 

end 