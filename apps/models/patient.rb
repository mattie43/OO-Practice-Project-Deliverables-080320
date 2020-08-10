class Patient
    attr_accessor :name, :age, :impatience
    @@all = []

    def initialize(name, age)
        @name = name
        @age = age
        @impatience = 0
        @@all << self
    end

    def inquire_appt_ready
        puts "The Doctor will be ready soon"
        increase_impatience
    end

    def self.all
        @@all
    end

    def doctors
        Appointment.all.reduce([]) { |a, app| a << app.doctor if app.patient == self; a }
    end

    def create_appointment(doctor)
        Appointment.new(self, doctor)
    end

    def appointments
        Appointment.all.select { |app| app.patient == self }
    end

    # def new_doctor(doctor)
    #     Appointment.new(self, doctor)
    # end

    # def change_doctors(doctor)
    #     self.doctor = doctor
    # end

    private

    def increase_impatience
        self.impatience += 1
    end

end