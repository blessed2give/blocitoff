class UsersController < ApplicationController
  def show
    @user = User.find(current_user)
    @items = @user.items.all
  end
end
