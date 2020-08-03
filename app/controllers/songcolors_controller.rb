class SongcolorsController < ApplicationController

  def index
    @songcolors = Songcolor.select("color")
  end

  def new
    @songcolor = Songcolor.new
    @songcolors = Songcolor.select("color")
  end


  def create
    Songcolor.create(songcolor_params)
  end

  private

  def songcolor_params
    params.permit(:color)
  end

end
