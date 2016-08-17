require( 'pg' )
require_relative('../db/sql_runner')
require_relative('../models/competitors')

class Events

  attr_reader( :id, :name, :sport, :gold, :silver, :bronze)

  def initialize( options )
    @id = options['id'].to_i
    @name = options['name']
    @sport = options['sport']
    @gold = options['gold']
    @silver= options['silver']
    @bronze = options['bronze']

  end
# FINISH THIS OFF TOMORROEW
  def save()
    sql = "INSERT INTO events ( name, sport, gold, silver, bronze) VALUES ('#{ @name }', '#{ @sport }', '#{@gold}', '#{silver}', '#{bronze}') RETURNING *"
    event = SqlRunner.run( sql ).first
    @id = event['id']
  end

  def self.update(options)
    sql = "UPDATE events SET  
    name = '#{options['name']}',
    sport = '#{options['sport']}',
    gold = '#{options['gold']}',
    silver = '#{options['silver']}',
    bronze = '#{options['bronze']}'
    WHERE id = #{options['id']}"
# binding.pry
    SqlRunner.run( sql )
  end

  def self.all()
    sql = "SELECT * FROM events ORDER BY sport"
    events = SqlRunner.run( sql )
    result = events.map { |s| Events.new( s ) }
    return result
  end

  def events()
    sql = "SELECT * FROM events WHERE id = #{ @id }"
    events = SqlRunner.run( sql )
    result = Event.new( nation.first )
    return result
  end

  def self.find(id)
    sql = "SELECT * FROM events WHERE id = #{id}"
    # binding.pry
    events = SqlRunner.run( sql )

    ##result = Events.map(events)
    result = Events.new(events.first)
    return result
  end


   def self.medal_table()
     sql = "SELECT * FROM events ORDER BY gold"
     events = SqlRunner.run( sql )
     result = events.map { |s| Events.new( s ) }
  # binding.pry
     return result
   end
end