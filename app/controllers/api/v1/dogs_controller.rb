class Api::V1::DogsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    dogs = Dog.all

    render json: dogs, :methods => [:carts, :image_url, :pictures]

  end

  def show
    @dog = Dog.find(params[:id])
    render json: @dog, :methods => [:carts, :image_url, :pictures]
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

      redirect_to "/dogs/#{@dog.id}"
  end

  def destroy
    @dog.destroy

    render nothing: true, status: :ok
  end

  private
  def dog_params
    params.require(:dog).permit(:name, :age, :description, :sex, :size, :race_id, :image, pictures_attributes: [:image])
  end

  def find_dog
    @dog = Dog.find(params[:id])
  end
end
