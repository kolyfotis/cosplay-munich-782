class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def show; end

  def new
    @booking = Booking.new
    @cosplay = Cosplay.find(params[:cosplay_id])
  end

  def create
    @booking = Booking.new(booking_params)
    @cosplay = Cosplay.find(params[:cosplay_id])
    @booking.cosplay = @cosplay
    @booking.user = current_user
    if @booking.save
      flash[:success] = "Your booking was created."
      redirect_to root_path
    else
      render :new
      flash[:warning] = "Your booking was not created"
    end
  end

  # def destroy
  #   @booking.destroy
  #   flash[:warning] = "Your booking has been deleted."
  # end

  private

  def booking_params
    params.require(:booking).permit(:date)
  end
end
