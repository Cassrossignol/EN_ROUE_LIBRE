class TransportsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index
    @transports = Transport.all
    @markers = @transports.geocoded.map do |transport|
      {
        lat: transport.latitude,
        lng: transport.longitude,
        info_window: render_to_string(partial: "info_window", locals: { transport: transport })
      }
    end
    if params[:query].present?
      sql_query = " \
        transports.transport_type ILIKE :query \
        OR transports.description ILIKE :query \
        OR transports.localization ILIKE :query \
      "
      @transports = Transport.where(sql_query, query: "%#{params[:query]}%")
    else
      @transports = Transport.all
    end
  end

  def show
    @transport = Transport.find(params[:id])
    @reservation = Reservation.new
  end

  def transport_params
    params.require(:transport).permit(:transport_type, :description, :picture, :localization, :price, :username)
  end
end
