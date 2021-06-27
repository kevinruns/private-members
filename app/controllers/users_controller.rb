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
    
    @user = User.find(params[:id])
    @past_events = @user.attended_events.order(event_on: :desc).past
    @future_events = @user.attended_events.order(event_on: :asc).future

    @invited_events_id = @user.event_attendings.invited.pluck(:attended_event_id)
    @invited_events = Event.where(id: @invited_events_id).order(event_on: :asc).future

  end

  def index
#    @users = User.all
    @users = User.where("id != ?", Current.user.id)
  end


  private

  def user_params
    params.require(:user).permit(:name, :username, :email, :password, :password_confirmation)
  end


end
