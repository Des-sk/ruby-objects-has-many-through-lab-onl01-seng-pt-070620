class Doctor
  
  @@all=[ ]
  
  attr_accessor :name
  
  def initialize(name)
    @name=name
    #save
    @@all<< self
  end
  
  # def save
  #   @all<< self
  # end
  
  def appointments 
    Appointment.all.select {|appointments| appointments.doctor == self}
  end
  
  def new_appointment(date, patient)
    Appointment.new(date, patient, self)
  end
  
  
  
  
  
end