class Patient 
  
  @@all=[ ]
  
  attr_accessor :name
  
  def initialize(name)
    @name= name
  end
 
 def new_appointment(date, doctor) 
   Appointment.new(date, doctor, self)
 end
 
 def self.all
   @@all
 end
 
 def appointments 
   Appointment.all {|appointments| appointment.patient == self}
 end
 
 
 def doctors
    appointments.map(&:doctor)
end
 
  
  
end