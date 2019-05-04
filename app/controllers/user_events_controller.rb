class UserEventsController < ApplicationController

    def index
      @user_events = UserEvent.all
    end

    def show
      @user_event = UserEvent.find(params[:id])
    end

    def new
      @users = User.all
      @user_event = UserEvent.new
    end

    def create
      @users = User.all
      @user_event = UserEvent.create(user_event_params)
      redirect_to @user_event
    end

    def edit
      @users = User.all
      @user_event = UserEvent.find(params[:id])
    end

    def update
      @users = User.all
      @user_event = UserEvent.find(params[:id])
      @user_event.update(user_event_params)
      redirect_to @user_event
    end

    def destroy
      @user_event = UserEvent.find(params[:id])
      @user_event.destroy
      redirect_to user_events_path
    end

    private

    def user_event_params
      params.require(:user_event).permit(:title, :description, :location, :date, :user_id)
    end

  end
