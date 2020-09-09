class ItemsController < ApplicationController
  before_action :authenticate_user!, only: [:new]

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

    def item
    end
  end

  private
  
  def item_params
    params.require(:item).permit(:name,:image,:explanation,:price,:category_id,:status_id,:postage_id,:prefecture_id,:shipping_day_id).merge(user_id: current_user.id)
  end

  def edit
  end

  def move_to_index
    unless user_signed_in?
      redirect_to action: :index
    end
  end
end
