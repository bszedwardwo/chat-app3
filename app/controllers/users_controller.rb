class UsersController < ApplicationController
  def edit
  end

  def update
    current_user.update(user_params)
    if current_user.save
      redirect_to root_path
    else
      render :edit
    end
  end

  private
  def user_params
    params.require(:user).permit(:email, :name)
  end

end
