class Api::V1::DogsController < ApplicationController

  def index
    dogs = Dog.all

    render json: dogs, :methods => [:carts, :image_url]

  end

  def show
    @dog = Dog.find(params[:id])
    render json: @dog, :methods => [:carts, :image_url]
  end

  def create
    dog = Dog.create(dog_params)

    if dog.valid?
      render json: dog
    else
      render json: dog.errors, status: :unprocessable_entity
    end
  end

  def update
      @dog = Dog.find(params[:id])
      @dog.update(dog_params)
  end

  def destroy
    @dog.destroy

    render nothing: true, status: :ok
  end

  private
  def dog_params
    params.require(:dog).permit(:name, :age, :description, :sex, :size, :race_id, :image)
  end

  def find_dog
    @dog = Dog.find(params[:id])
  end
end
