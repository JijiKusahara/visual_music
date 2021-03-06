class DiscsController < ApplicationController

  def index
    @discs = Disc.all
  end

  def show
    @disc = Disc.find(params[:id])
  end

  def new
    @disc = Disc.new
  end

  def create
    @disc = Disc.new(disc_params)
    if @disc.save
      redirect_to root_path, notice: 'discを作成しました'
    else
      render :new
    end
  end

  def edit
    @disc = Disc.find(params[:id])
  end

  def update
    @disc = Disc.find(params[:id])
    if @disc.update(disc_params)
      redirect_to root_path, notice: 'discを更新しました'
    else
      render :edit
    end
  end


  def destroy
    disc = Disc.find(params[:id])
    disc.destroy

    redirect_to root_path
  end




  private
  def disc_params
    params.require(:disc).permit(:name, song_ids: [])
  end
end
