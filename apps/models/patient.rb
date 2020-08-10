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
        #Patient#doctors should return a list of Doctor instances associated with this patient through Appointments. 
        #Try to ensure this list does not include duplicates.

        # Why is .select not working here but .collect is???
        Appointment.all.collect { |app| app.doctor if app.patient == self }.compact.uniq
    end

    def create_appointment(doctor)
        #Patient#create_appointment should create a new appointment between the current patient and a specified doctor
        Appointment.new(self, doctor)
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