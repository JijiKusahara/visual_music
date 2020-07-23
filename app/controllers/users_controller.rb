class UsersController < ApplicationController

  def edit
  end

  def update
    if  current_user.update(user_params)
      redirect_to root_path
      #保存できた場合root_pathに移動
    else
      render :edit
      #保存できなかった場合は再度edit画面を表示
    end
  end



  private

  def user_params
    params.require(:user).permit(:name, :email)
  end
end