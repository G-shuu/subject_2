class PicturesController < ApplicationController
  before_action :id_get_picture, only: [:edit, :update, :destroy]

  def index
    @pictures = Picture.all
  end

  def new
    @picture = Picture.new
  end

  def create
    @picture = Picture.new(picture_params)
    if @picture.save
      redirect_to pictures_path, notice: "写真を投稿しました！"
    else
      render "new"
    end
  end

  def edit
  end

  def update
    if @picture.update(picture_params)
      redirect_to pictures_path, notice: "投稿内容を編集しました！"
    else
      render "edit"
    end
  end

  def show
  end

  def destroy
    @picture = Picture.find(params[:id])
    @picture.destroy
    redirect_to pictures_path, notice: "投稿内容を削除しました！"
  end

  private
    def picture_params
      params.require(:picture).permit(:title, :content)
    end

    def id_get_picture
      @picture = Picture.find(params[:id])
    end
end
