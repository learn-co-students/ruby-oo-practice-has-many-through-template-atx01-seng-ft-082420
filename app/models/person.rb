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
end
