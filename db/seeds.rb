require_relative( '../models/appointment.rb' )

Appointment.delete_all

appointment1 = Appointment.new({ 'title' => 'Dentist' , 'start_time' => '2016-03-29 09:00:00' , 'end_time' => '2016-03-29 10:00:00', 'location' => 'Morningside', 'priority' => 2 })
appointment2 = Appointment.new({ 'title' => 'Meeting with VeryImportantPeople' , 'start_time' => '2016-03-30 14:00:00' , 'end_time' => '2016-03-30 16:00:00', 'location' => 'CodeBase', 'priority' => 5 })
appointment3 = Appointment.new({ 'title' => 'Presentation on Q1' , 'start_time' => '2016-03-30 09:30:00' , 'end_time' => '2016-03-30 10:00:00', 'location' => 'Glasgow Site', 'priority' => 3  })

appointment1.save
appointment2.save
appointment3.save

