require( 'sinatra' )
require( 'sinatra/contrib/all' )
require( 'pry-byebug' )
require_relative('./models/nations') 
require_relative('./models/competitors') 
require_relative('./models/events') 
# require_relative('./models/album')

get '/nations' do
  @nations = Nations.all
  erb ( :nations )
 end

 get '/nations1' do
   erb ( :nations1 )
  end

  get '/' do
    erb ( :splash )
   end

   get '/splash' do
     erb ( :splash )
    end


   get '/home' do
     erb ( :home )
    end

    get '/participants' do
      erb ( :participants )
     end

     get '/competitors' do
      @competitors = Competitors.all
       erb ( :competitors )
      end


     get '/medal_table' do
       erb ( :medal_table )
      end

      get '/events' do
        @events=Events.all
        erb ( :events )
      end

      get '/events/:id/edit' do
        # binding.pry
        @event = Events.find(params[:id])

        erb ( :event_edit )
      end





# #INDEX from REST
# get '/artists' do
#   # in rest - INDEX
#   @artists = Artist.all()
#   erb ( :index )
# end

# get '/albums/new' do
#   # in rest - CREATE
#   erb( :new_album )
# end

# #EDIT FROM REST
# get '/artists/:id/edit' do
#   # in rest - EDIT
#   @artist = Artist.find(params[:id])
#   erb( :edit )
# end

# #DELETE
# post '/artists/:id/delete' do 
#   Artist.destroy( params[:id])
#   redirect(to ("/artists"))
# end

# #UPDATE
# post '/artists/:id' do 
#   Artist.update( params )
#   redirect(to ("/artists/#{params[:id]}"))
# end

# get '/artists/new' do
#   # in rest - CREATE
#   erb( :new )
# end

# get '/home' do
#   erb ( :home )
# end

# get '/artists/:id' do
#   @artist = Artist.find(params[:id])
#   erb(:show)
# end

# #CREATE
# post '/artists' do 
#   @artist = Artist.new( params )
#   @artist.save() 
#   erb( :create )
# end