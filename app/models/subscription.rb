class Subscription
    attr_accessor :magazine, :person, :cost
    @@all = []
    def initialize(magazine, person, cost)
        @magazine = magazine
        @person = person
        @cost = cost
        self.class.all << self
    end

    def self.all
        @@all
    end

    def self.total_income
        self.all.map do |subscription|
            subscription.cost
        end.inject(0,:+)
    end
end
