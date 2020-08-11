class ExhibitionsController < ApplicationController
  before_action :set_exhibition, only: [:new, :create, :destroy, :show]

  def index
    @exhibitions = Exhibition.all
  end
   
  def new
    @exhibition = Exhibition.new
  end
  
  def create
    @exhibition = Exhibition.new(params_exhibition)
    @exhibition.galery = @galery
    if @exhibition.save
      flash[:success] = "Exhibition successfully created"
      render(template: "exhibitions/show")
    else
      flash[:error] = "Something went wrong"
      render 'new'
    end
  end

  def show
    @exhibition = Exhibition.find(params[:id])
  end

  def destroy
    if @exhibition.destroy
      flash[:success] = 'Exhibition was successfully deleted.'
      redirect_to galery_path(@exhibition.galery)
    else
      flash[:error] = 'Something went wrong'
      redirect_to exhibitions_url
    end

  end
  
  private 

  def set_exhibition
    @exhibition = Exhibition.find(params[:id])
  end
end
