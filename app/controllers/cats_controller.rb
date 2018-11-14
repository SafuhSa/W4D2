class CatsController < ApplicationController

  def index
    @cats = Cat.all
    render 'index'
  end
  
  def show
    @cat = Cat.find(params[:id])
    if @cat
      render 'show'
      redirect_to cats_url
    end
  end
  
  def new
    @cat = Cat.new
    render 'new'
  end
  
  def create
    cat = Cat.new(param_url)
    
    if cat.save
      redirect_to cats_url(cat)
    else
      render 'new'
    end
  end
  
  def edit
    @cat = Cat.find(params[:id])
    render 'edit'
  end
  
  def update
    
  end
  
  def param_url
    params.require(:cat).permit(:birth_date, :color, :name, :sex, :description)
  end
end
