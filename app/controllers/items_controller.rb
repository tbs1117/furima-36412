class ItemsController < ApplicationController
  before_action :authenticate_user!, only: :new
  before_action :move_to_index, except: [:index, :show]
  before_action :set_item, only: [:show, :edit, :update, :destroy]
  before_action :set_redirect, only: [:edit, :update, :destroy]

  def index
    @items = Item.order("created_at DESC")
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

  def show
  end

  def edit
  end

  def update
    @item.update(item_params)
    if @item.save
      redirect_to item_path
    else
      render :edit
    end
  end

  def destroy
    if @item.destroy
      redirect_to root_path
    else
      render :show
    end
  end

  private

  def item_params
    params.require(:item).permit(:image, :name, :category_id, :price, :explanation, :condition_id, :shipping_id, :prefectures_id, :shipping_days_id, :user).merge(user_id: current_user.id)
  end

  def move_to_index
    unless user_signed_in?
      redirect_to user_session_path
    end
  end

  def set_item
    @item = Item.find(params[:id])
  end
  
  def set_redirect
    redirect_to root_path unless current_user.id == @item.user_id
  end
  


  # private

  # def user_params
  #   params.require(:user).permit(:nickname, :email, :encrypted_password, :family_name, :first_name, :family_name_kana, :first_name_kana, :birthday)
  # end
end
