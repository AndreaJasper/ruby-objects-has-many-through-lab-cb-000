class Doctor
  attr_accessor :name
  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_appointment(patient, date)
    Patient.new(name, self, date)
  end

  def appointments
    Patient.all.select {|patient| patient.doctor == self}
  end

end
