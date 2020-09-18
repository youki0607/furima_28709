class ItemsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :edit, :update, :destory]
  before_action :set_item, only: [:edit, :show, :update, :destroy]

  def index
    @item = Item.all.order('created_at DESC')
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

    def item
    end
  end

  def show
    # @item = Item.new(item_params)
  end

  def edit
  end

  def update
    @item = Item.find(params[:id])
    if @item.update(item_params) #バリデーションを通過した時
      redirect_to root_path
    else #バリデーションに引っかかった時。
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
    params.require(:item).permit(:name, :image, :explanation, :price, :category_id, :status_id, :postage_id, :prefecture_id, :shipping_day_id).merge(user_id: current_user.id)
  end

  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end

  def set_item
    @item = Item.find(params[:id])
  end
end
