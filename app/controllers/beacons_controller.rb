class BeaconsController < ApplicationController
  before_action :set_beacon, only: [:show, :edit, :update, :destroy]

  def index
    if current_user.admin == true
      @beacons = Beacon.all
      render json: @beacons
    else
      redirect_to home_path
    end
  end

  def show
    render json: @beacon
  end

  def new
    @beacon = Beacon.new
    respond_with(@beacon)
  end

  def edit
  end

  def create
    @beacon = Beacon.new(beacon_params)
    @beacon.save
    respond_with(@beacon)
  end

  def update
    @beacon.update(beacon_params)
    respond_with(@beacon)
  end

  def destroy
    @beacon.destroy
    respond_with(@beacon)
  end

  private
    def set_beacon
      @beacon = Beacon.find(params[:id])
    end

    def beacon_params
      params.require(:beacon).permit(:UUID)
    end
end
