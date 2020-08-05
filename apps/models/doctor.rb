class Doctor
    attr_accessor :name, :years
    attr_reader :speciality
    @@all = []

    def initialize(name, speciality, years=1)
        @name = name
        @speciality = speciality
        @years = years
        @@all << self
    end

    def self.all
        @@all
    end

    #Is this supossed to be called with a Doctor? wasn't sure to put with self.greet
    def greet
        puts "Welcome to the office! Please sit and wait for your turn!"
    end

    def self.find_by_speciality(str)
        self.all.select { |ele| ele.speciality == str }
    end

end