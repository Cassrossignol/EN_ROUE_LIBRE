class TransportsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index
    if params[:query].present?
      sql_query = " \
        transports.transport_type ILIKE :query \
        OR transports.description ILIKE :query \
        OR transports.localization ILIKE :query \
        OR transports.username ILIKE :query \
      "
      @transports = Transport.where(sql_query, query: "%#{params[:query]}%")
    else
      @transports = Transport.all
    end
  end

=begin   def index
    if params[:query].present?
      @transports = Transport.where("transport_type OR description ILIKE ?", "%#{params[:query]}%")
    else
      @transports = Transport.all
    end
  end
=end

  def show
    @transport = Transport.find(params[:id])
    @reservation = Reservation.new
  end

  def transport_params
    params.require(:transport).permit(:transport_type, :description, :picture, :localization, :price, :username)
  end
end
