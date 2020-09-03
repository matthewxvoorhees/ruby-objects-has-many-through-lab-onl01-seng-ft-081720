class Doctor
    @@all = []
    attr_accessor :name
    def initialize(name)
        @name=name
        @@all << self
    end

    def new_appointment(patient, date)
        Appointment.new(patient, date, self)
    end

    def appointments
        Appointment.all.select{ |apps| apps.doctor == self }
    end

    def patients
        Appointment.all.map{ |pat| pat.patient }
    end
    
    def self.all
        @@all
    end
end
