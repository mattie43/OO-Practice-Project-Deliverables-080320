require 'pry'
require_relative 'apps/models/doctor'
require_relative 'apps/models/patient'
require_relative 'apps/models/appointment'
require_relative 'lists'

patient1 = Patient.all[0]
patient2 = Patient.all[1]
patient3 = Patient.all[2]
patient4 = Patient.all[3]

doctor1 = Doctor.all[0]
doctor2 = Doctor.all[1]
doctor3 = Doctor.all[2]
doctor4 = Doctor.all[3]

binding.pry