require( 'date' )

class Day

  def initialize(options)
    @id = options['id']
    @date = Date.parse( options['date'] )
  end

end