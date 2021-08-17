class ReservationsController < ApplicationController

  def index
    @reservations = Reservation.all
  end

  def show
    @reservation = Reservation.find(params[:id])
  end

  def new
    @reservation = Reservation.new
  end

  def create
    @reservation = Reservation.new(reservation_params)
    if @reservation.save
      redirect_to reservation_path(@user)
    else
      render :new
    end
  end

  private

  def reservation_params
    params.require(:reservation).permit(:user_id, :transport_id, :reservation_date)
  end
end
