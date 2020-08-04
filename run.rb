# Practice Deliverables
# Patient
# Patient#initialize: should initialize with a name (string) and age (integer)
# Patient#name: should return the Patient’s name, should be able to change its name after creation
# Patient#age: should return the Patient’s age, should be able to change its age after creation
# Doctor
# Doctor#initialize: should initialize with a name (string), specialty (string), and years (integer). Years should default to 1
# Doctor#name: should return the Doctor’s name, should be able to change its name after creation
# Doctor#speciality: should return the Doctor’s speciality, should NOT be able to change its speciality after creation
# Doctor#years: should return the Doctor’s years, should be able to change its years after creation

class Patient
    attr_accessor :name, :age

    def initialize(name, age)
        @name = name
        @age = age
    end

end

class Doctor
    attr_accessor :name, :years
    attr_reader :speciality

    def initialize(name, specialty, years=1)
        @name = name
        @speciality = speciality
        @years = years
    end
end
