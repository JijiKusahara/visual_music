class SongsController < ApplicationController
  skip_before_action :verify_authenticity_token
  
  def index
    @songs = Song.all
  end

  def new
    @song = Song.new
  end

  def create
    Song.create(song_params)
  end

  def destroy
    song = Song.find(params[:id])
    song.destroy
  end

  
  private

  def song_params
    params.permit(:name)
  end

end
