class DefaultController < ApplicationController
  def index
    @users = User.all
  end

  def create
    @user = User.new(params[:user])
    @user.save
    redirect_to @user
  end
  
private
  def default_params
    params.require(:user).permit(:user_name, :user_id)
  end
end
