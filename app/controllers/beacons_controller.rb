class BeaconsController < ApplicationController
  before_action :set_beacon, only: [:show, :edit, :update, :destroy]

  def index
    @beacons = Beacon.all
    if params[:major].nil? || params[:minor].nil?
      render json: @beacons
    else
      @beacon = Beacon.find_by(major: params[:major], minor: params[:minor])
      if @beacon.nil?
        render json: "No beacon found!", status: 404
      else
        render json: @beacon.to_json(:only => [:name, :description])
      end
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

  def find_beacon

  end

  private
    def set_beacon
      @beacon = Beacon.find(params[:id])
    end

    def beacon_params
      params.require(:beacon).permit(:UUID)
    end
end
