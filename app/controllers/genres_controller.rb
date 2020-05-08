class GenresController < ApplicationController
  def index
    @genres = Genre.all
  end

  def show
    @genre = Genre.find(params[:id])
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
