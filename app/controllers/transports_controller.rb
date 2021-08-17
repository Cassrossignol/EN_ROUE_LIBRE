class TransportsController < ApplicationController

  def index
    @transports = Transport.all
  end

  def show
    @transport = Transport.find(params[:id])
  end

end
