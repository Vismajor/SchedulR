require_relative( 'appointment' )
require_relative( 'event' )

class Calendar

  def initialize( options )
    @appointments = options['appointments']
    @events = options['events']
    @default_days = 30
  end

  def days( start_date=DateTime.now, end_date=( DateTime.now + @default_days ) )
    number_of_days = ( end_date - start_date )
    number_of_days.to_i.times.map { |n| DateTime.now + n }
  end

  def appointments( day )
    @appointments.select { |appointment| appointment.start_date == day.strftime("%Y-%m-%d") }
  end

  def day_order()
    days.slice(0,7).map { |day| day.strftime( '%^a' ) }
  end

end