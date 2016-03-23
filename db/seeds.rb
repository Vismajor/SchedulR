require_relative( '../models/appointment.rb' )

Appointment.delete_all

appointment1 = Appointment.new({ 'id' => 1, 'title' => 'Dentist' , 'start_time' => '2004-10-19 10:23:54', 'end_time' => '2004-10-19 11:00:00', 'location' => 'Morningside', 'priority' => 1  })
appointment2 = Appointment.new({ 'id' => 2, 'title' => 'Meeting with the squad' , 'start_time' => '2004-10-22 20:00:00', 'end_time' => '2004-10-22 21:00:00', 'location' => 'Black Bull Pub', 'priority' => 5  })
appointment3 = Appointment.new({ 'id' => 3, 'title' => 'Conference' , 'start_time' => '2004-12-19 10:00:00', 'end_time' => '2004-12-19 11:00:00', 'location' => 'Apex hotel Edinburgh', 'priority' => 1  })

appointment1.save
appointment2.save
appointment3.save