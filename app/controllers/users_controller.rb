class UsersController < ApplicationController
	before_action :authenticate_user!
	before_action :correct_user, only: [:edit, :update]
  def index
  	@users = User.all
  end

  def show
  	@user = User.find(params[:id])

  end

  def edit
  	@user = User.find(params[:id])
  end

  def update
  end

  private#----------------------
    def correct_user
	    user = User.find(params[:id])
	    if current_user != user
	      redirect_to user_path(current_user)
	    end
	end


end
