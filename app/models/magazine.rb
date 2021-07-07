class Magazine
    attr_accessor :title, :genre
    @@all = []
    def initialize(title, genre)
        @title = title
        @genre = genre
        self.class.all << self
    end

    def self.all
        @@all
    end

    def subscriptions
        Subscription.all.select do |subscription|
            subscription.magazine == self
        end
    end

    def people
        self.subscriptions.map do |subscription|
            subscription.person.name
        end
    end

    def subscription_costs
        self.subscriptions.map do |subscription|
            subscription.cost
        end
    end

    def self.average_subscription_cost
        self.all.map do |magazine|
            magazine.subscription_costs
        end.flatten.inject(0, :+) / self.all.count
    end

    def self.title_with_highest_subscription_cost
        self.all.max_by do |magazine|
            magazine.subscription_costs
        end.title
    end
end
