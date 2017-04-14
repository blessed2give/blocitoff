class ItemsController < ApplicationController
  def new
    @user = User.find(current_user)
    @item = @user.items.new
  end

  def create
    @user = User.find(current_user)
    @item = @user.items.new
    @item.name = params[:item][:name]

    if @item.save
      flash[:notice] = "Item created!"
      redirect_to @user
    else
      flash.now[:alert] = "There was an error creating new item. Please try again."
      render :new
    end
  end
end
