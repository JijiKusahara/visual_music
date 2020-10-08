class SongcolorsController < ApplicationController
  before_action :set_song


  def index
    @songcolor = Songcolor.new
    @songcolors = Songcolor.where(song_id: @song).order("created_at DESC")
  end

  def new
  end


  def create
    @songcolor = Songcolor.create(color: params[:color], song_id: params[:song_id])
    respond_to do |format|
      format.json
    # if @songcolor.save
    #   respond_to do |format|
    #     format.json
    #     # format.json { render json: @songcolor}
    #   end
    # else
    #   @songcolors = Songcolor.includes(:song)
    #   flash.now[:alert] = 'カラーピッカーで色を選択してください'
    #   render :index
    end
  end

  
  
  private

  def songcolor_params
    params.permit(:color)
  end

  def set_song
    @song = Song.find(params[:song_id])
  end

end
