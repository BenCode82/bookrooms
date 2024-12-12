class BookingsController < ApplicationController
  before_action :set_user, only: [:new, :create]

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)

    if @booking.save
      redirect_to room_path(@booking.room)
    else
      render 'rooms/show'
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :room_id)
  end

  def set_user
    @user = current_user
  end

end
