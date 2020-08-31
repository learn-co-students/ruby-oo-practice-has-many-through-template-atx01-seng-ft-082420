class Person
    attr_accessor :name, :profession
    @@all = []
    def initialize(name, profession)
        @name = name
        @profession = profession
        self.class.all << self
    end

    def self.all
        @@all
    end

    def subscription
        Subscription.all.select do |subscription|
            subscription.person == self
        end
    end

    def magazine
        self.subscription.map do |subscription|
            subscription.magazine
        end
    end

    def self.find_all_by_profession(profession)
        self.all.select do |person|
            person.profession == profession
        end
    end
end
