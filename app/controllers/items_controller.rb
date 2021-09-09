class ItemsController < ApplicationController
  before_action :authenticate_user!, only: :new
  
  def index
    @items = Item.all
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
  end

  private

  def item_params
    params.require(:item).permit(:image, :name, :category_id, :price, :explanation, :condition_id, :shipping_id, :prefectures_id, :shipping_days_id, :user).merge(user_id: current_user.id)
  end

  # def update
  #   if current_user.update(user_params)
  #     redirect_to root_path
  #   else
  #     render :edit
  #   end
  # end

  # private

  # def user_params
  #   params.require(:user).permit(:nickname, :email, :encrypted_password, :family_name, :first_name, :family_name_kana, :first_name_kana, :birthday)
  # end
end
