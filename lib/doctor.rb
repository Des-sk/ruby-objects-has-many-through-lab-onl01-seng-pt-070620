class Doctor
  
  @@all=[ ]
  
  
  
  def initialize(name)
    @name=name
    save
  end
  
  def save
    @all<< self
  end
  
  
  end
  
  def new_appointment(date, patient)
    Appointment.new(date, patient, self)
  end
  
  
  
  
  
end