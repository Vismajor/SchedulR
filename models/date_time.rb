class DateTime

  def pretty_string
    self.strftime( "%d" )
  end

  def current_month?
    self.month == DateTime.now.month
  end

end