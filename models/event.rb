class Event

  def initialize( options )
    @start_time = options['start_time']
    @end_time = options['end_time']
    @title = options['title']
    @location = options['location']
  end

end 