class SongsController < ApplicationController

  def index
    @songs = Song.all
  end

  def new
    @song = Song.new
  end

  def create
    Song.create(song_params)
  end


  private

  def song_params
    params.permit(:name)
  end

end
