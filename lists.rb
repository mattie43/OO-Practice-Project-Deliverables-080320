doctors = [
    {:name => "John", :speciality => "Dermatologist", :years => 5},
    {:name => "Bob", :speciality => "Dermatologist", :years => 2},
    {:name => "Steven", :speciality => "Plastic Surgeon"},
    {:name => "Anthony", :speciality => "Plastic Surgeon", :years => 10},
    {:name => "Alicia", :speciality => "Cardiologist", :years => 7},
    {:name => "Tiffani", :speciality => "Cardiologist", :years => 4},
    {:name => "Caryn", :speciality => "Neurologist", :years => 1},
    {:name => "Ryan", :speciality => "Neurologist"}
]

patients = [
    {:name => "Mike", :age => 56},
    {:name => "Liam", :age => 25},
    {:name => "Noah", :age => 33},
    {:name => "Will", :age => 20},
    {:name => "Emma", :age => 47},
    {:name => "Olivia", :age => 24},
    {:name => "Logan", :age => 19},
    {:name => "Sam", :age => 34}
]

doctors.each { |doctor| Doctor.new(doctor[:name], doctor[:speciality], doctor[:years]) }
patients.each { |patient| Patient.new(patient[:name], patient[:age]) }

Patient.all.each do |patient|
    random = rand(0..(Doctor.all.length-1))
    patient.change_doctors(Doctor.all[random])
end