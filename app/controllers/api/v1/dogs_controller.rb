class Api::V1::DogsController < ApplicationController
  def index
    dogs = Dog.all

    render json: dogs, include: :vaccines
  end

  def show
    render json: @dog
  end

  def create
    dog = Dog.create(dog_params)

    if dog.valid?
      render json: dog
    else
      render json: dog.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @dog.destroy

    render nothing: true, status: :ok
  end

  private
  def dog_params
    params.require(:dog).permit(:name, :age, :description, :sex, :size, :race_id, :vaccines_attributes => [:name, :description])
  end

  def find_dog
    @dog = Dog.find(params[:id])
  end
end
