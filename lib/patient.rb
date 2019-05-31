class Patient
  attr_reader :name, :appointment, :doctor

  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_appointment(doctor, date)
    Appointment.new(doctor, self, date)
  end

  def appointments
    Appointment.all.select do |appointments|
      appointments.patient == self
    end
  end

  def doctor
    appointments.collect do |appointment|
      appointment.doctor
    end
  end
end
