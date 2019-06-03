class UsersController < ApplicationController

  def create
    User.create(user_params)
    redirect_to '/'
  end

  private

  def user_params
    params.require(:user).permit(:name, :password, :password_confirmation)
  end
end
