doctors = [
    {:name => "John", :speciality => "Dermatologist", :years => 5},
    {:name => "Matt", :speciality => "Plastic Surgeon", :years => 8},
    {:name => "Marisha", :speciality => "Cardiologist", :years => 2},
    {:name => "Travis", :speciality => "Neurologist", :years => 4}]

patients = [
    {:name => "Mike", :age => 56},
    {:name => "Liam", :age => 40},
    {:name => "Olivia", :age => 24},
    {:name => "Sam", :age => 34}]

doctors.each { |doctor| Doctor.new(doctor[:name], doctor[:speciality], doctor[:years]) }
patients.each { |patient| Patient.new(patient[:name], patient[:age]) }

Appointment.new(Patient.all[0], Doctor.all[0])
Appointment.new(Patient.all[1], Doctor.all[1])
Appointment.new(Patient.all[2], Doctor.all[2])
Appointment.new(Patient.all[3], Doctor.all[3])
Appointment.new(Patient.all[3], Doctor.all[3]) #repeat for tests
Appointment.new(Patient.all[2], Doctor.all[3]) 
Appointment.new(Patient.all[1], Doctor.all[3]) 

# Patient.all.each do |patient|
#     random = rand(0..(Doctor.all.length-1))
#     Appointment.new(patient, Doctor.all[random])
# end