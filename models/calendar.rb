require_relative( './day' )

class Calendar

  def initialize( options )
    @id =  options['id']
    @start_time = options['start_time']
    @end_time = options['end_time']
    @title = options['title']
    @location = options['location']
    @priority = options['priority']
  end

end