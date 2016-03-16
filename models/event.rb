require( 'pg' )
require_relative('../db/sql_runner')

class Event

  def initialize( options )
    @start_time = options['start_time']
    @end_time = options['end_time']
    @title = options['title']
    @location = options['location']
  end

  def self.all()
    sql = "SELECT * FROM Events"
    return Event.map_items(sql)
  end

  def save()
    sql = "INSERT INTO Events (title, start_time, end_time, location ) VALUES ('#{ @title }', ' #{@start_time}', '#{@end_time}', '#{@location}')"
    SqlRunner.run_sql( sql )
  end

  def self.delete_all 
    sql = "DELETE FROM Events"
    SqlRunner.run_sql(sql)
  end

  def self.map_items(sql)
    event = SqlRunner.run_sql(sql)
    result = event.map { |product| Event.new( product ) }
    return result
  end

  def self.map_item(sql)
    result = Event.map_items(sql)
    return result.first
  end

end 