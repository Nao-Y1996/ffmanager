class GenresController < ApplicationController
  before_action :authenticate_user!
  def index
    @genres = Genre.all
  end

  def show
    @genre = Genre.find(params[:id])

    @genre1_users_info = UserGenreInfo.where(genre_id: @genre.id, is_valid: true, priority: 1.to_i)
    @genre2_users_info = UserGenreInfo.where(genre_id: @genre.id, is_valid: true, priority: 2)
    @request_users_info = UserGenreInfo.where(genre_id: @genre.id, is_valid: false)

    @genre1_1st_users = []
    @genre1_2nd_users = []
    @genre1_3rd_users = []

    @genre2_1st_users = []
    @genre2_2nd_users = []
    @genre2_3rd_users = []

    @genre1_users_info.each do |genre1_user_info|
      if genre1_user_info.user.term == get_1st_grade_term-2
        @genre1_3rd_users.push(genre1_user_info.user)
      elsif genre1_user_info.user.term == get_1st_grade_term-1
        @genre1_2nd_users.push(genre1_user_info.user)
      else
        @genre1_1st_users.push(genre1_user_info.user)
      end
    end

    @genre2_users_info.each do |genre2_user_info|
      if genre2_user_info.user.term == get_1st_grade_term-2
        @genre2_3rd_users.push(genre2_user_info.user)
      elsif genre2_user_info.user.term == get_1st_grade_term-1
        @genre2_2nd_users.push(genre2_user_info.user)
      else
        @genre2_1st_users.push(genre2_user_info.user)
      end
    end
  end

  def edit
    #ジャンル名の編集画面
  end

  def update
    #ジャンル名の更新
  end

  def destroy
    #ジャンルの削除
  end

  def new
    #新規ジャンルの登録画面
  end

  def create
    #新規ジャンルの登録処理
  end
end
