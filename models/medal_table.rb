require( 'pg' )
require_relative('../db/sql_runner')
require ('pry-byebug')

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
    sql = "INSERT INTO events (id,name,sport,gold,silver,bronze) VALUES ('#{ @name }', #{ @id }) RETURNING *"
    album = SqlRunner.run( sql ).first
    @id = nation['id']
  end

  def self.all()
    sql = "SELECT * FROM events ORDER BY sport"
    events = SqlRunner.run( sql )
    result = events.map { |s| Events.new( s ) }
    binding.pry
    return result
  end

  def events()
    sql = "SELECT * FROM events WHERE id = #{ @id }"
    events = SqlRunner.run( sql )
    result = Event.new( nation.first )
    return result
  end


  # def self.all()
  #   sql = "SELECT * FROM events ORDER BY name"
  #   events = SqlRunner.run( sql )
  #   result = events.map { |s| Events.new( s ) }
  
  #   return result
  # end
end