class Doctor
  
  attr_accessor :name, :patient, :appointment
  
  @@all = []
  
 def initialize(name)
   @name = name
   @@all << self 
 end
 
 def self.all 
   @@all 
 end 
 
 def new_appointment(patient,date)
   Appointment.new(date, patient, self)
 end
 
 def appointments
   Appointment.all.select{|aa| aa.doctor == self}
 end

def patients
  self.appointments.collect{|a| a.patient}
end
  
end