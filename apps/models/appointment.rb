class Appointment
    attr_accessor :patient, :doctor
    @@all = []

    def initialize(patient, doctor)
        @patient = patient
        @doctor = doctor
        @@all << self
    end

    def self.all
        @@all
    end

end