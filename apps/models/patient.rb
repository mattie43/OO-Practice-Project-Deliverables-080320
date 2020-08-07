class Patient
    attr_accessor :name, :age, :impatience, :doctor
    @@all = []

    def initialize(name, age, impatience = 0)
        @name = name
        @age = age
        @impatience = impatience
        @@all << self
    end

    def inquire_appt_ready
        puts "The Doctor will be ready soon"
        increase_impatience
    end

    def self.all
        @@all
    end

    # def new_doctor(doctor)
    #     Appointment.new(self, doctor)
    # end

    def change_doctors(doctor)
        self.doctor = doctor
    end

    private

    def increase_impatience
        self.impatience += 1
    end

end