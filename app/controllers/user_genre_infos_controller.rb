class UserGenreInfosController < ApplicationController

	#before_action :user_genre_info_params, only: [:create, :update]

	def create
		new_user = UserGenreInfo.new(user_genre_info_params)
		new_user.user_id = current_user.id
		if new_user.save
			#binding.pry
			redirect_to genre_path(user_genre_info_params[:genre_id])
		else
			redirect_to user_path(new_user)
		end
	end

	def update

	end

	def destroy
	end

	private#---------------------
	def user_genre_info_params
	  params.permit(:genre_id, :priority, :is_valid)
	  #require(:user_genre_info).
    end

end
