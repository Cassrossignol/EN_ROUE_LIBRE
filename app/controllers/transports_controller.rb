class TransportsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index
    if params[:query].present?
      sql_query = " \
        transports.transport_type @@ :query \
        OR transports.description @@ :query \
        OR transports.localization @@ :query \
      "
      @transports = Transport.joins(:director).where(sql_query, query: "%#{params[:query]}%")
    else
      @transports = Transport.all
    end
  end

  def show
    @transport = Transport.find(params[:id])
    @reservation = Reservation.new
  end
end
