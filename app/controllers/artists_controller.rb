RSpotify::authenticate('a0b548bd1bd64de2b3277d9dc4d12923', '5b9544235a6243eca69907df30149128')
# @client_id = ENV['SPOTIFY_CLIENT_ID']
# @client_secret = ENV['SPOTIFY_CLIENT_SECRET']
# RSpotify::authenticate(@client_id, @client_secret)

class ArtistsController < ApplicationController
  def index
    if !params[:artist_name].empty?
      @artists = RSpotify::Artist.search(params[:artist_name])
    else
      redirect_to root_path
    end
  end

  def show
    @artist = RSpotify::Artist.find(params[:id])
  end
end
