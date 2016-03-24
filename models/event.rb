class Event

  def initialize( options )
    @start_time = DateTime.new( options['start_time'] )
    @end_time = DateTime.new( options['end_time'] )
    @title = options['title']
    @location = options['location']
  end

end 