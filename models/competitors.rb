require( 'pg' )
require_relative('../db/sql_runner')

class Competitors

  attr_reader( :id, :name, :competitor)

  def initialize( options )
    @id = options['id'].to_i
    @name = options['name']
  end

  def save()
    sql = "INSERT INTO competitors (id,name) VALUES ('#{ @name }', #{ @id }) RETURNING *"
    competitior = SqlRunner.run( sql ).first
    @id = competitior['id']
  end

  def competitors()
    sql = "SELECT * FROM competitors WHERE id = #{ @id }"
    nation = SqlRunner.run( sql )
    result = Nation.new( nation.first )
    return result
  end

  def self.all()
    sql = "SELECT * FROM competitors ORDER BY name"
    competitors = SqlRunner.run( sql )
    result = competitors.map { |s| Competitors.new( s ) }
  
    return result
  end

  # def self.all()
  #   sql = "SELECT * FROM competitors ORDER BY name"
  #   competitors = SqlRunner.run( sql )
  #   result = competitors.map { |s| Competitors.new( s ) }
  #   return result
  # end


  # def self.all()
  #   sql = "SELECT competitors.name, nation.name FROM competitors INNER JOIN nations ON competitors.nation = nation.id ORDER BY competitors.name"
  #   competitors = SqlRunner.run( sql )
  #   result = competitors.map { |s| Competitors.new( s ) }
  #   return result
  # end

  





end