class BookingsController < ApplicationController

  def create
    @booking = Booking.new
    @booking.user = current_user
    @booking.yacht = Yacht.find(params[:yacht_id])
    if @booking.save
      redirect_to root_path
    end
  end

end
