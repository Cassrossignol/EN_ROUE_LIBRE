class Owner::TransportsController < ApplicationController
  before_action :set_transport

  def index
    @owner_transports = Transport.where(user: current_user)
    # render :index
  end

  def create
    @owner_transport = Transport.new(owner_transport_params)
    @owner_transport.user_id = current_user.id
    if @owner_transport.save
      redirect_to transport_path(@owner_transport)
    else
      render :new
    end
  end

  def edit

  end

  def update
  end

  def destroy
    @owner_transport = Transport.find(params[:id])
    @owner_transport.destroy
    redirect_to owner_transport_path(@owner_transport)
  end

  private

  def owner_transport_params
    params.require(:transport).permit(:transport_type, :description, :picture, :localization,
                                            :availability)
  end

  def set_transport
    @transport = Transport.new
  end
end
