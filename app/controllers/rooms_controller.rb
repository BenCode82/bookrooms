class RoomsController < ApplicationController
  def index
    @rooms = Room.all
  end

  def show
    @room = Room.find(params[:id])
    @user = current_user

    @booking = Booking.new
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
end


