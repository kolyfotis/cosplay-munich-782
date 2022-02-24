class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new()
  end

  def destroy
    @booking.destroy
    redirect_to bookings_path, notice: "Your booking has been deleted."
  end
end
