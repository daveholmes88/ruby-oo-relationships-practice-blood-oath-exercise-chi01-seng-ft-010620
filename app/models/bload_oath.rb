class BloodOath
    attr_reader :cult, :follower
    attr_accessor :date

    @@all = []
    
    
    def initialize(cult, follower)
        @cult = cult
        @follower = follower
        @date = []
        @date << Time.new.year
        @date << Time.new.month
        @date << Time.new.day
        @@all << self
    end 

    def self.all
        @@all
    end 

    def self.initiation_date(follower, cult)
        i = @@all.find do |blood_oaths|
            blood_oaths.follower == follower && blood_oaths.cult == cult
        end 
        i.date.join(',').gsub(',','-')
    end 

end 