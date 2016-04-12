require( 'pg' )
require_relative('../db/sql_runner')

class Appointment

  attr_reader :title, :location, :id, :priority, :start_date, :start_time, :end_date, :end_time

  def initialize( options )
    @id =  options['id'].to_i
    @start_date = options['start_date']
    @start_time = options['start_time']
    @end_date = options['end_date']
    @end_time = options['end_time']
    @title = options['title']
    @location = options['location']
    @priority = options['priority'].to_i
  end

  def self.find(id)
    sql = "SELECT * FROM Appointments WHERE id = #{id}"
    return Appointment.map_item(sql)
  end

  def self.all()
    sql = "SELECT * FROM Appointments"
    return Appointment.map_items(sql)
  end

  def save()
    sql = "INSERT INTO Appointments (start_date, start_time, end_date, end_time, title, location, priority ) VALUES ('#{@start_date}', '#{@start_time}', '#{@end_date}', '#{@end_time}', '#{@title}', '#{@location}', #{@priority}) RETURNING *"
    appointment = SqlRunner.run_sql( sql ).first
    result = Appointment.new( appointment )
    return result
  end

  def update()
    sql = "UPDATE Appointments SET start_date = '#{@start_date}', start_time = '#{ @start_time }', end_date = '#{@end_date}', end_time = '#{ @end_time }', title = '#{ @title }', location='#{ @location }', priority=#{ @priority } WHERE id = #{@id}"
    SqlRunner.run_sql( sql )
  end

  def self.delete_all 
    sql = "DELETE FROM Appointments"
    SqlRunner.run_sql(sql)
  end

  def destroy( id )
     sql = "DELETE FROM Appointments WHERE id = #{id}"
     SqlRunner.run_sql( sql )
  end

  def self.map_items(sql)
    appointment = SqlRunner.run_sql(sql)
    result = appointment.map { |product| Appointment.new( product ) }
    return result
  end

  def self.map_item(sql)
    result = Appointment.map_items(sql)
    return result.first
  end

end