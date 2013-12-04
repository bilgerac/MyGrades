class UsersController < ApplicationController
  def new
  end
  
  def index
    @users = User.all
  end

  def create
    @user = User.new(params[:user])
    @user.save
    redirect_to @user
  end

 def show
    @user = User.find(params[:id])
  end

private
  def user_params
    params.require(:user).permit(:user_name, :user_id)
  end
end
