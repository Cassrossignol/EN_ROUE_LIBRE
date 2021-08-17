class TransportsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index
    @transports = Transport.all
  end

  def show
    @transport = Transport.find(params[:id])
  end

end
