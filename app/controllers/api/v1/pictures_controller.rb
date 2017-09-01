class Api::V1::PicturesController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    pictures = Picture.all

    render json: pictures
  end

  def show
    render json: @picture
  end

  def create
    picture = Picture.create(picture_params)
    picture.save

    if picture.valid?
      render json: picture
    else
      render json: picture.errors, status: "Vale verga"
    end
  end

  def update
      @picture= Picture.find(params[:id])
      @picture.update(picture_params)
  end


  def destroy
    @picture.destroy

    render nothing: true, status: :ok
  end

  private
  def picture_params
    params.require(:picture).permit(:image)
  end

  def find_picture
    @picture = Picture.find(params[:id])
  end


end
