require_relative( 'appointment' )
require_relative( 'event' )

class Calendar

  def initialize( options )
    @appointments = options['appointments']
    @events = options['events']
  end

end