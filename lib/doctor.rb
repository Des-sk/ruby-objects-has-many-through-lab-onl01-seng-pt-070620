class Doctor
  
  @@all=[ ]
  attr_accessor :name
  
  def initialize(name)
    @name=name
    #save
  end
  
  # def save
  #   @all<< self
  # end
  
  def self.all
    @@all
  end
  
  def new_appointment(date, patient)
    Appointment.new(date, patient, self)
  end
  
  
  
  
  
end