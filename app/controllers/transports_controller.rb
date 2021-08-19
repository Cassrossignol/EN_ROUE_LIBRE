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
  end

  def show
    @transport = Transport.find(params[:id])
    @reservation = Reservation.new
  end
end
