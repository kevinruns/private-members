class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to root_path, notice: "successfully created account"
    else
      render :new
    end
  end

  def show
  end

  private

  def user_params
    params.require(:user).permit(:name, :username, :email)
  end


end