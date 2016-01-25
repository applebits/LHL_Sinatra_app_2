# Homepage (Root path)
get '/songs' do
  @songs = Song.all
  erb:'songs/index'
end

get '/songs/new' do
  @song = Song.new
  erb :'songs/new'
end

get '/songs/:id' do
  @song = Song.find params[:id]
  erb :'songs/show'
end

post '/songs' do
  @song = Song.new(
    author: params[:author],
    title: params[:title],
    url: params[:url]
  )
  if @song.save
    redirect '/songs'
  else
    erb :'songs/new'
  end
end