class SongcolorsController < ApplicationController
  before_action :set_song


  def index
    @songcolor = Songcolor.new
    @songid = Song.find(params[:song_id].to_s)
    @songcolors = Songcolor.select("color","song_id").where(song_id: @songid)
  end

  def new
  end


  def create
    @songcolor = Songcolor.create(color: params[:color], song_id: params[:song_id])
    # if @songcolor.save
    #   binding.pry
    #   redirect_to new_song_songcolor_path(@song), notice: '選択した色が保存されました'
    # else
    #   @songcolors = Songcolor.includes(:song)
    #   flash.now[:alert] = 'カラーピッカーで色を選択してください'
    #   render :new
    # end
  end

  
  
  private

  def songcolor_params
    params.permit(:color)
  end

  def set_song
    @song = Song.find(params[:song_id])
  end

end
