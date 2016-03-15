require_relative('../db/sql_runner')


class Appointment

  def initialize( options )
    @id =  options['id']
    @start_time = options['start_time']
    @end_time = options['end_time']
    @title = options['title']
    @location = options['location']
    @priority = options['priority']
  end

  def self.all()
    sql = "SELECT * FROM Appointments"
    return Appointment.map_items(sql)
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