class Appointment
  attr_accessor :patient, :doctor, :date
  @@all = []

  def self.all
    @@all
  end

  def initialize(date, doctor)
    @date = date
    @doctor = doctor
    @@all << self
    end

 end
