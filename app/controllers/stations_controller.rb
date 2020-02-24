class StationsController < ApplicationController
  before_action :set_station, only: [:show, :edit, :update, :destroy ]

  def index
    @stations = Station.all
  end

  def new
    @station = Station.new
  end

  def create
    @station = Station.new(station_params)
    if @station.save
      redirect_to stations_path,notice:'新しい最寄駅情報を追加しました！'
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @station.update(station_params)
      redirect_to stations_path, notice:'最寄駅情報を編集しました！'
    else
      render :edit
    end
  end

  def destroy
    @station.destroy
    redirect_to stations_path, notice:'最寄駅情報を削除しました！'
  end

  private

  def station_params
    params.require(:station).permit(:line, :name, :time)
  end

  def set_station
    @station = Station.find(params[:id])
  end

end
