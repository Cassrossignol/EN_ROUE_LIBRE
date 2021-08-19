class ReservationsController < ApplicationController

  def index
    @reservations = Reservation.where(user: current_user)
  end

  def show
    @reservation = Reservation.find(params[:id])
  end

  def create
    @reservation = Reservation.new(reservation_params)
    @reservation.transport_id = params[:transport_id]
    @reservation.user = current_user
    if @reservation.save
      redirect_to reservations_path(current_user)
    else
      @transport = @reservation.transport
      render "transports/show"
    end
  end

  private

  def reservation_params
    params.require(:reservation).permit(:reservation_date)
  end
end
