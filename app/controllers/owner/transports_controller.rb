class Owner::TransportsController < ApplicationController

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
  end

  private

  def owner_transport_params
    params.require(:owner_transport).permit(:transport_type, :description, :picture, :localization, :availability)
  end
end
