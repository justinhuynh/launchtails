class CategoriesController < ApplicationController
  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)
    if @category.save
      flash[:notice] = 'Category added.'
      redirect_to categories_path
    else
      render :new
    end
  end

  def index
    @categories = Category.all
  end

  def show
    @category = Category.find(params[:id])
  end

  protected
  def drink_params
    params.require(:category).permit(:name)
  end
end
