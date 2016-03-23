require_relative('../db/sql_runner')


require( 'pg' )
require_relative('../db/sql_runner')

class Appointment
  attr_reader :title, :location, :id, :priority, :end_time, :start_time

  def initialize( options )
    @id =  options['id']
    @start_time = options['start_time']
    @end_time = options['end_time']
    @title = options['title']
    @location = options['location']
    @priority = options['priority']
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
    # Timestamp needs single quotation marks around them
    sql = "INSERT INTO Appointments (start_time, end_time, title, location, priority ) VALUES ('#{@start_time}', '#{@end_time}', '#{@title}', '#{@location}', #{@priority})"
    SqlRunner.run_sql( sql )
  end

  def self.delete_all 
    sql = "DELETE FROM Appointments"
    SqlRunner.run_sql(sql)
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