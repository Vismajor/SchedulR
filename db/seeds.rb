require_relative( '../models/appointment.rb' )

Appointment.delete_all

appointment1 = Appointment.new({ 'title' => 'Dentist' ,'start_date' => '2016-04-15', 'start_time' => '10:20:00', 'end_date' => '2016-10-15', 'end_time' => '11:00:00', 'location' => 'Morningside', 'priority' => 1  })
appointment2 = Appointment.new({ 'title' => 'Meeting with the squad' ,'start_date' => '2016-04-01', 'start_time' => '20:00:00', 'end_date' => '2004-12-10', 'end_time' => '21:00:00', 'location' => 'Black Bull Pub', 'priority' => 5  })
appointment3 = Appointment.new({ 'title' => 'Tango class' ,'start_date' => '2004-10-10', 'start_time' => '17:00:00', 'end_date' => '2004-10-10', 'end_time' => '18:30:00', 'location' => 'Community Centre', 'priority' => 4  })

appointment1.save
appointment2.save
appointment3.save