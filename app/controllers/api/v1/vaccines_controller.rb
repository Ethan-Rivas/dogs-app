class Api::V1::VaccinesController < ApplicationController
  def index
    vaccines = Vaccine.all

    render json: vaccines, include: :carts
  end

  def show
    render json: @vaccine
  end

  def create
    vaccine = Vaccine.create(vaccine_params)

    if vaccine.valid?
      render json: vaccine
    else
      render json: vaccine.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @vaccine.destroy

    render nothing: true, status: :ok
  end

  private
  def vaccine_params
    params.require(:vaccine).permit(:name, :description)
  end

  def find_vaccine
    @vaccine = Vaccine.find(params[:id])
  end
end
