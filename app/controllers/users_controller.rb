class UsersController < ApplicationController

  def show
  	 @user = User.find(params[:id])
  end

  def index
  	@users = User.all
  end

  def favorites
    @user = User.find(params[:id])
  end
 

end
