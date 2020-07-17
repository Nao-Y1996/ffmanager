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
