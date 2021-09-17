class OrdersController < ApplicationController
  before_action :move_to_index, only: :index

  def index
    @item = Item.find(params[:item_id])
    @order_address = OrderAddress.new
    if current_user.id == @item.user_id 
      redirect_to root_path
    elsif
      @item.order != nil
      redirect_to root_path
    end
  end

  def create
    @item = Item.find(params[:item_id])
    @order_address = OrderAddress.new(order_params)
    if @order_address.valid?
      Payjp.api_key = ENV["PAYJP_SECRET_KEY"]
      Payjp::Charge.create(
        amount: @item.price,
        card: order_params[:token],
        currency: 'jpy'
      )
      @order_address.save
      redirect_to root_path 
    else
      render :index
    end
  end

  private

  def order_params
    params.require(:order_address).permit(:postal_code, :prefectures_id, :city, :house_number, :building_name, :telephone_number).merge(user_id: current_user.id, item_id: params[:item_id], token: params[:token])
  end

  def move_to_index
    redirect_to new_user_session_path unless user_signed_in?
  end
end
