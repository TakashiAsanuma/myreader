class UsersController < ApplicationController
  def edit
    @user = User.find(current_user.id)
  end

  def update
    region = params.require(:user).permit(:region)
    user = User.find(current_user.id)
    user.update(region)
    redirect_to edit_users_url  
  end
end
