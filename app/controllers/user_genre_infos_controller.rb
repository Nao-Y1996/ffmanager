class UserGenreInfosController < ApplicationController
	before_action :authenticate_user!
	before_action :user_genre_info_params, only: [:create, :update]

  	#ジャンルへの登録申請
	def create
		user_info = current_user.user_genre_infos#どのジャンルにも登録されてない時→nilにならずに[]が返る
		genre1_info = user_info.where(priority: 1)[0]#見つからない時はnil
		genre2_info = user_info.where(priority: 2)[0]
		@new_info = UserGenreInfo.new(user_genre_info_params)
		@new_info.user_id = current_user.id
		#binding.pry
		if @new_info.save
			redirect_to user_path(current_user)
		#1ジャン登録済で1ジャン申請してきた時
	    elsif genre1_info!=nil && genre1_info.is_valid==true && @new_info.is_valid==false && @new_info.priority==1
	      flash[:join_error] = '1ジャンが登録済です。新規で登録申請するには登録解除申請をしてください'
	      redirect_to genre_path(user_genre_info_params[:genre_id])
	    #2ジャン登録済で2ジャン申請してきた時
	    elsif genre2_info!=nil && genre2_info.is_valid==true && @new_info.is_valid==false && @new_info.priority==2
	      flash[:join_error] = '2ジャンが登録済です。新規で登録申請するには登録解除申請をしてください'
	      redirect_to genre_path(user_genre_info_params[:genre_id])
	    else
	      redirect_to user_path(current_user)
		end
	end

	#ジャンルの登録許可
	def update
		#------登録許可を実行しようとしているユーザーが、そのジャンルの部門長もしくは代表であることを確認----
		genre = Genre.find(params[:genre_id])
    	current_user_genre1 = current_user.user_genre_infos.find_by(priority: 1)
    	#(現在のユーザーが1ジャン登録している かつ 対象のジャンルと現在のユーザーの1ジャンが一致　かつ　現在のユーザが部門長)または(代表)
    	if (current_user_genre1!=nil && genre.id==current_user_genre1.genre_id && current_user_genre1.is_genre_leader) or (current_user.is_admin==true)
    	#-----------------------------------------------------------------------------
    		user_info = UserGenreInfo.find(params[:info_id])
			user_info.is_valid = true
			#binding.pry
	    	if user_info.save
	    		flash[:notice] = "承認に成功しました."
	   			redirect_to genre_path(genre) and return
	   		else#権限の確認をしているので承認に失敗する状況はないと思うが、失敗したと気に表示(その時はシステムの改善が必要)
	    		flash[:notice] = "承認に失敗しました."
				redirect_to genre_path(genre) and return
			end
    	else#権限がないユーザーには承認ボタンを設置していないが、URLから直接承認しようとしてきた時(できるか知らんけど)の対策
    		flash[:notice] = "承認権限がありません."
    		redirect_to genre_path(genre) and return
    	end
	end

	def destroy
	end

	#部門長の登録
	def change_is_genre_leader
		#部門長にしたいユーザーの1ジャンの情報を取得(モデルのバリデーションによりユニークなのでfind_byを使用)
		user_genre1_info = UserGenreInfo.find_by(user_id: params[:user_id] ,priority: 1)
			#↓genre1_infoが存在することを保証する（実用上1ジャン登録してないユーザーは部門長にならないが...）
		if user_genre1_info==nil
		  flash[:notice]='1ジャン登録をしていないユーザーは部門長にできません'
		  redirect_to user_path(params[:user_id])
		else
			#部門長に登録したいユーザーの他に、そのジャンル内で部門長がいないか確認する
			genre_leader = UserGenreInfo.find_by(genre_id: user_genre1_info.genre_id, priority: 1, is_genre_leader: true)#部門長情報を検索
			if genre_leader==nil#部門長がいない時
				user_genre1_info.is_genre_leader = true
				if user_genre1_info.save
					flash[:notice]='部門長を登録しました'
					redirect_to user_path(params[:user_id])
				else
					redirect_to genre_path(user_genre1_info.genre_id)
				end
			elsif genre_leader!=nil#部門長がいる時
				flash[:notice]='対象のジャンルにはすでに部門長が存在するため、部門長登録できませんでした'
				redirect_to user_path(params[:user_id])
			end
		end
	end



	private#---------------------
	def user_genre_info_params
	  params.permit(:genre_id, :user_id, :priority, :is_valid)
	  #require(:user_genre_info).
    end

    def is_genre_leader_or_admin?
    	
    end
end