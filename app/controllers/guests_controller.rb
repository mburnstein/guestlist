class GuestsController < ApplicationController
  def index
    @guest = Guest.all
  end

  def new
    @guest = Guest.new
  end

  def create
    Guest.create(guest_params)
    redirect_to root_path
  end

  def show
    @guest = Guest.find(params[:id])
  end

  def edit
    @guest = Guest.find(params[:id])
  end

  def update
    @guest = Guest.find(params[:id])
    @guest.update_attributes(guest_params)
    redirect_to root_path
  end

  def destroy
    @guest = Guest.find(params[:id])
    @guest.destroy
    redirect_to root_path
  end

  private

  def guest_params
    params.require(:guest).permit(:first_name, :last_name)
  end

end
