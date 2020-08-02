class SongcolorsController < ApplicationController

  def new
    @songcolor = Songcolor.new
  end


  def create
    Songcolor.create(songcolor_params)

  end

  private

  def songcolor_params
    params.permit(:color)
  end

end
