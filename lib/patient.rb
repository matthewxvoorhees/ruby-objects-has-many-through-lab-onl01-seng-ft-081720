class Patient
    @@all = []
    attr_accessor :name
        def initialize(name)
            @name=name
            @@all << self
        end
        def new_appointment(date, doctor)
            Appointment.new(date, self, doctor)
        end
        def self.all
            @@all
        end
        def doctors
            appointments.collect{|app| app.doctor}
        end
        def appointments
            Appointment.all.select {|app| app.patient == self }
        end
    end
