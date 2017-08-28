class CartsController < ApplicationController
<<<<<<< HEAD
=======
  def index
    carts = Cart.all

    render json: carts
  end

  def show
    render json: @cart
  end

  def create
    cart = Cart.create(cart_params)

    if cart.valid?
      render json: cart
    else
      render json: cart.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @cart.destroy

    render nothing: true, status: :ok
  end

  private
  def cart_params
    params.require(:cart).permit(:dog_id, :vaccine_id, :vaccine_date)
  end

  def find_cart
    @cart = Cart.find(params[:id])
  end
>>>>>>> 359d47ef5d22181af4edd5aac224cab21a6f4d83
end
