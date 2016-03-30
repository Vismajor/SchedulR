class DateTime

  def pretty_string
    self.strftime( "%d" )
  end

  def even_month
    self.strftime("%m").to_i % 2 == 0
  end

end