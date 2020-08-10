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

    def greet
        puts "Welcome to the office! Please sit and wait for your turn!"
    end

    def self.find_by_speciality(str)
        self.all.select { |doctor| doctor.speciality == str }
    end

    def appointments
        Appointment.all.select { |app| app.doctor == self }
    end

    def patients
        self.appointments.map { |app| app.patient }.uniq
    end

    # def patients
    #     Patient.all.select { |patient| patient.doctor == self }
    # end

    # def discharge_patient(patient)
    #     self.patients.each { |check_patient| patient.doctor = nil if patient == check_patient }
    # end

    # def transfer_patient(patient, doctor)
    #     self.patients.each { |check_patient| patient.doctor = doctor if patient == check_patient }
    # end

end