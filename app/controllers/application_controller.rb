class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
end
  def index
    @articles = artcile.all
  end

  def show
    @artcile = artcile.find(params[:id])
  end

  def new
    @artcile = artcile.new
  end

  def create
    @artcile = artcile.create(artcile_params)
    redirect_to artcile_path(@artcile)
  end

  def edit
    @artcile = artcile.find(params[:id])
  end

  def update
    @artcile = artcile.find(params[:id])
    @artcile.update(artcile_params)
    redirect_to Articles_path
  end

  def delete
    @artcile = artcile.find(params[:id])
    @artcile.destroy
    redirect_to Articles_path
  end

  def set_task
    @artcile
  end

  private
  def artcile_params
     params.require(:artcile).permit(:title, :content, :completed)
  end
end

