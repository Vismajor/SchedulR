require( 'pg' )
require( 'pry-byebug' )
require_relative('../db/sql_runner')

class Event
  attr_reader :title, :location, :id, :end_time, :start_time


  def initialize( options )
    @id =  options['id']
    @start_time = options['start_time']
    @end_time = options['end_time']
    @title = options['title']
    @location = options['location']
  end

  def self.all()
    sql = "SELECT * FROM Events"
    return Event.map_items(sql)
  end

  def self.find(id)
    sql = "SELECT * FROM Events WHERE id = #{id}"
    return Event.map_item(sql)
  end

  def save()
    sql = "INSERT INTO Events (title, start_time, end_time, location ) VALUES ('#{ @title }', ' #{@start_time}', '#{@end_time}', '#{@location}')"
    SqlRunner.run_sql( sql )
  end

  def update()
    sql = "UPDATE Events SET start_time = '#{ @start_time }', end_time = '#{ @end_time }', title = '#{ @title }', location='#{ @location }' WHERE id = #{@id}"
    SqlRunner.run_sql( sql )
  end

  def destroy( id )
     sql = "DELETE FROM Events WHERE id = #{id}"
     SqlRunner.run_sql( sql )
  end

  def self.delete_all 
    sql = "DELETE FROM Events"
    SqlRunner.run_sql(sql)
  end

#Date returning functions
  def starting_date
    starting_array = @start_time.split
    return starting_array[0]
  end

  def starting_time
    starting_array = @start_time.split
    return starting_array[1]
  end

  def ending_date
    ending_array = @end_time.split
    return ending_array[0]
  end

  def ending_time
    ending_array = @end_time.split
    return ending_array[1]
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