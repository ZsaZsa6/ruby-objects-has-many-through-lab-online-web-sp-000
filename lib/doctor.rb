class Doctor

  @@all = []
  attr_accessor :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def name
    

  def new_appointment(patient, date)
  end

  def appointments
  end

  def patients
  end
end
