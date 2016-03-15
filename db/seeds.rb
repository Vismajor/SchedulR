require_relative( '../models/appointment.rb' )

Appointment.delete_all

appointment1 = Appointment.new({ 'title' => 'Dentist' , 'start_time' => '2004-10-19 10:23:54' })
appointment1.save