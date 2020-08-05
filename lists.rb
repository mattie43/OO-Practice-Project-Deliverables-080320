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
    {:name => "John", :age => 56},
    {:name => "Bob", :age => 25},
    {:name => "Steven", :age => 33},
    {:name => "Anthony", :age => 20},
    {:name => "Alicia", :age => 47},
    {:name => "Tiffani", :age => 24},
    {:name => "Caryn", :age => 19},
    {:name => "Ryan", :age => 34}
]

doctors.each { |ele| Doctor.new(ele[:name], ele[:speciality], ele[:years]) }
patients.each { |ele| Patient.new(ele[:name], ele[:age]) }