require( 'pg' )
require_relative('../db/sql_runner')

class Nations
  
  attr_reader( :id, :name)

  def initialize( options )
    @id = options['id'].to_i
    @name = options['name']
  end

  def save()
    sql = "INSERT INTO nations (id,name) VALUES ('#{ @name }', #{ @id }) RETURNING *"
    album = SqlRunner.run( sql ).first
    @id = nation['id']
  end

  def nations()
    sql = "SELECT * FROM nations WHERE id = #{ @id }"
    nation = SqlRunner.run( sql )
    result = Nation.new( nation.first )
    return result
  end

  def self.all()
    sql = "SELECT * FROM nations ORDER BY name"
    nations = SqlRunner.run( sql )
    result = nations.map { |s| Nations.new( s ) }
    return result
  end

  def self.find(id)
    sql = "SELECT * FROM nations WHERE id = #{id}"
  binding.pry
    nations = SqlRunner.run( sql )
    result = Nations.new(nations.first)
    return result
  end



end
