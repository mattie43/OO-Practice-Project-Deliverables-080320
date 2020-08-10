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
        self.all.select { |doctor| doctor.speciality == str }
    end

    def appointments
        #Doctor#appointments should return a list of Appointment instances associated with this doctor
        Appointment.all.collect { |app| app if app.doctor == self }.compact.uniq
    end

    def patients
        #Doctor#patients should return a list of Patient instances associated with this doctor through Appointments. 
        #Try to ensure this list does not include duplicates.
        Appointment.all.collect { |app| app.patient if app.doctor == self }.compact.uniq
    end

    # def patients
    #     Patient.all.select { |patient| patient.doctor == self }
    # end

    # def discharge_patient(patient)
    #     #set patients doc to nil
    #     #only if patient belongs to doc
    #     self.patients.each { |check_patient| patient.doctor = nil if patient == check_patient }
    # end

    # def transfer_patient(patient, doctor)
    #     #change doctor only if they belong
    #     self.patients.each { |check_patient| patient.doctor = doctor if patient == check_patient }
    # end

end