class UserGenreInfosController < ApplicationController
	before_action :authenticate_user!
	before_action :user_genre_info_params, only: [:create, :update]

	def new
		@user_genre_info = UserGenreInfo.new
	end

  	#ジャンルへの登録申請
	def create
		user_info = current_user.user_genre_infos#どのジャンルにも登録されてない時→nilにならずに[]が返る
		genre1_info = user_info.where(priority: 1)[0]#見つからない時はnil
		genre2_info = user_info.where(priority: 2)[0]
		@user_genre_info = UserGenreInfo.new(params_int(params[:user_genre_info]))
		#@new_info.user_id = current_user.id
		#binding.pry
		if @user_genre_info.save
			redirect_to user_path(current_user)
		#1ジャン登録済で1ジャン申請してきた時
	    elsif genre1_info!=nil && genre1_info.is_valid==true && @user_genre_info.is_valid==false && @user_genre_info.priority==1
	      flash[:join_request_error] = '1ジャンは登録済です。新規で登録するには1ジャンの登録を解除してください'
	      redirect_to new_user_genre_info_path
	    #2ジャン登録済で2ジャン申請してきた時
	    elsif genre2_info!=nil && genre2_info.is_valid==true && @user_genre_info.is_valid==false && @user_genre_info.priority==2
	      flash[:join_request_error] = '2ジャンは登録済です。新規で登録するには2ジャンの登録を解除してください'
	      redirect_to new_user_genre_info_path
	    #1ジャン申請済で1ジャン申請してきた時
	    elsif genre1_info!=nil && genre1_info.is_valid==false && @user_genre_info.is_valid==false && @user_genre_info.priority==1
	      flash[:join_request_error] = '1ジャンは申請済です。新規で申請するには1ジャンの申請を解除してください'
	      redirect_to new_user_genre_info_path
	    #2ジャン申請済で2ジャン申請してきた時
	    elsif genre2_info!=nil && genre2_info.is_valid==false && @user_genre_info.is_valid==false && @user_genre_info.priority==2
	      flash[:join_request_error] = '2ジャンは申請済です。新規で申請するには2ジャンの申請を解除してください'
	      redirect_to new_user_genre_info_path
	    else
	      flash[:join_request_error] = '項目を選択してください'
	      render :new
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
			#user_info.is_valid = true
	    	if user_info.update(is_valid: true)
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

	#ジャンル登録申請の取り消し（却下）
	def destroy_request
		#binding.pry
		info = UserGenreInfo.find(params[:info_id].to_i)
		user_id = info.user_id
		info.destroy
    	redirect_to user_path(user_id)
	end

	#ジャンルの退会
	def destroy
		info = UserGenreInfo.find(params[:info_id].to_i)
		user_id = info.user_id
    	info.destroy
    	redirect_to user_path(user_id)
	end

	#部門長の登録
	def add_genre_leader
		#部門長にしたいユーザーの1ジャンの情報を取得(モデルのバリデーションによりユニークなのでfind_byを使用)
		user_genre1_info = UserGenreInfo.find_by(user_id: params[:user_id] ,priority: 1)
		#部門長にできるのはgenre1_infoが存在する(1ジャン登録している)ユーザーに限る
		if user_genre1_info==nil
		  flash[:add_genre_leader_error]='1ジャン登録をしていないユーザーは部門長にできません'
		  redirect_to user_path(params[:user_id])
		else
			#部門長に登録したいユーザーの他に、そのジャンル内で部門長がいないか確認する
			genre_leader = UserGenreInfo.find_by(genre_id: user_genre1_info.genre_id, priority: 1, is_genre_leader: true)#部門長情報を検索
			if genre_leader==nil#部門長がいない時
				#user_genre1_info.is_genre_leader = true
				if user_genre1_info.update(is_genre_leader: true)
					flash[:add_genre_leader_error]='部門長を登録しました'
					redirect_to user_path(params[:user_id])
				else#ここが実行されることはない気がするが...一応入れておく
					flash[:add_genre_leader_error]='エラー：部門長を登録できませんでした'
					redirect_to user_path(params[:user_id])
				end
			elsif genre_leader!=nil#部門長がいる時
				flash[:add_genre_leader_error]='部門長が登録済みです'
				redirect_to user_path(params[:user_id])
			end
		end
	end


	#部門長の削除
	def destroy_genre_leader
		#部門長権限を削除したいユーザーの1ジャンの情報を取得(モデルのバリデーションによりユニークなのでfind_byを使用)
		user_genre1_info = UserGenreInfo.find_by(user_id: params[:user_id] ,priority: 1)
		#genre1_infoが存在することを保証する（1ジャン登録してないユーザーは部門長になっていないはずだが...）
		if user_genre1_info==nil
		  flash[:notice]='エラー：部門長情報を取得できません。アプリ制作者に報告してください。email: 0809n.ysoccer@gmail.com'
		  redirect_to user_path(params[:user_id])
		else
			if user_genre1_info.update(is_genre_leader: false)
				flash[:notice]='部門長権限を削除しました'
				redirect_to user_path(params[:user_id])
			else#ここが実行されることはない気がするが...一応入れておく
				flash[:notice]='エラー：部門長権限を削除できませんでした'
				redirect_to user_path(params[:user_id])
			end
		end
	end



	private#---------------------

	def integer_string?(str)
	   Integer(str)
	   true
	 rescue ArgumentError
	   false
	end
	def params_int(str_hash)
	  params.permit(:genre_id, :user_id, :priority, :is_valid, :is_genre_leader)
	  str_hash.each do |key,value|
	    if integer_string?(value)
	       str_hash[key]=value.to_i
	    end
	  end
	end


	def user_genre_info_params
	  params.permit(:genre_id, :user_id, :priority, :is_valid, :is_genre_leader)
	  #binding.pry
	  #require(:user_genre_info).
    end

    def is_genre_leader_or_admin?

    end
end