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

  def new_appointment(doctor, date)
    Doctor.new(name, self, date)
  end

end
