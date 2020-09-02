class ApplicationController < ActionController::Base
	before_action :configure_permitted_parameters, if: :devise_controller?

	def after_sign_in_path_for(resource)
	 user_path(current_user)
	end

	def after_sign_out_path_for(resource)
	  root_path
	end

	def is_admin?
		if current_user.is_admin != true
			redirect_to users_path
		end
	end

	#最小の学年(1年生)の代を取得する
	def get_1st_grade_term
		all_users = User.all
		grade1_term = 0
		all_users.each do |user|
		  if user.term > grade1_term
		    grade1_term = user.term
		  end
		end
		return grade1_term
	end


    private
	def configure_permitted_parameters
	    #新規登録時、ログイン時、更新時のストロングパラメータに「自分で追加したカラム」の中でそのときに必要なものを許可
	    added_attrs =[:email, :student_number, :name, :name_kana, :term, :is_admin, :is_genre_leader,:password, :password_confirmation]
	    devise_parameter_sanitizer.permit(:sign_up, keys: added_attrs)
	    devise_parameter_sanitizer.permit(:sign_in, keys: added_attrs)
	    devise_parameter_sanitizer.permit(:account_update, keys: added_attrs)
	end
end
