require 'sinatra/base'
require './lib/bookmarks.rb'

class BookmarkManager < Sinatra::Base
enable :method_override

  get '/' do
    erb :index
  end

  get '/bookmarks' do
    p ENV
    @bookmarks = Bookmarks.all
    erb :bookmarks
  end

  get '/new' do
    erb :new
  end

  post '/bookmarks' do
    Bookmarks.create(url: params[:url], title: params[:title])
  redirect '/bookmarks'
  end

  delete '/bookmarks/:id' do
    Bookmarks.delete(id: params[:id])
    redirect '/bookmarks'
  end

  run! if app_file == $0
end
