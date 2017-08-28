class Api::V1::RacesController < ApplicationController
  def index
    races = Race.all

    render json: races
  end

  def show
    render json: @race
  end

  def create
    race = Race.create(race_params)

    if race.valid?
      render json: race
    else
      render json: race.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @race.destroy

    render nothing: true, status: :ok
  end

  private
  def race_params
    params.require(:race).permit(:name, :description)
  end

  def find_race
    @race = Race.find(params[:id])
  end
end
