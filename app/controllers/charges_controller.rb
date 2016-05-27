class ChargesController < ApplicationController
before_action :authenticate_user!, except: [:index] # authenticate user before any action, allow only index controller
    def new
    #display total in checkout
      @amount = params[:amount]
    end

  def create
    order = Order.new
    # order.user = User.find(1)
    # order.product = Product.find(2)
    order.user_id_id = 2
    order.product_id_id = 2
    order.payment_id = 1
    order.name = params[:fname][:fname]
    order.address = params[:address1][:address1]
    order.city = params[:city][:city]
    order.contact = params[:contact][:contact]
    order.save
    # redirect_to new_charge_path
  end


  # private
  #   def order_params
  #     params.require(:order).permit(:payment_id, :user_id, :product_id)
  #   end
end