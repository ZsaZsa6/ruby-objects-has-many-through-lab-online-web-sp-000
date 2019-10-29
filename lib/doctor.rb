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

  def new_appointment(patient, date)
    Appointment.new(patient, date, self)
  end

  def appointments
    Appointment.all.select do |appointments|
      appointments.doctor == self
    end
  end

  def patients
    self.appointments.map { |patient| appointment.patient }
  end
end
