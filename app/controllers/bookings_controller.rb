class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def show; end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    if @booking.save
      flash[:success] = "Your booking was created."
      redirect_to bookings_path
    else
      render :new
      flash[:warning] = "Your booking was not created"
    end
  end

  def destroy
    @booking.destroy
    flash[:warning] = "Your booking has been deleted."
  end

  private

  def booking_params
    params.require(:user).permit(:date, :user_id, :price, :details, :photo)
  end
end
