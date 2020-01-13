class Follower
    attr_reader :name, :age, :life_motto

    @@all = []
    def initialize(name, age, life_motto)
        @name = name 
        @age = age
        @life_motto = life_motto
        @@all << self
    end 

    def self.all
        @@all
    end 

    def join_cult(cult_name)
        BloodOath.new(cult_name, self)
    end 

    def self.of_a_certain_age(age_number)
        @@all.select {|all_followers| all_followers.age == age_number}
    end 

end 