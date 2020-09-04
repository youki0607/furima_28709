class ItemsController < ApplicationController
  def index
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

  private
  
  def item_params
    params.require(:item).permit(:image,:category_id,:status_id,:postage_id,:prefecture_id,:shipping_id,).merge(user_id: current_user.id)
  end

  def edit
  end
end
