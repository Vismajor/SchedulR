require_relative( 'appointment' )
require_relative( 'event' )

class Calendar

  attr_reader( :appointments, :events )

  def initialize( options )
    @appointments = options['appointments']
    @events = options['events']
    @default_days = 35
  end

  def days( start_date=DateTime.now, end_date=( DateTime.now + @default_days ) )
    number_of_days = ( end_date - start_date )
    number_of_days.to_i.times.map { |n| start_date + n }
  end

  def appointments_on( day )
    @appointments.select do |appointment| 
      appointment_date = DateTime.parse( appointment.start_date )
      appointment_date.to_date == day.to_date 
    end
  end

  def date_sort()
    @appointments.sort_by do |appointment|
      appointment.start_date
    end
  end

  # Zsolt write test
  def day_order()
    days.slice(0,7).map { |day| day.strftime( '%^a' ) }
  end

end