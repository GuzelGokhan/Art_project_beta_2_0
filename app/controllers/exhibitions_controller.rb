class ExhibitionsController < ApplicationController


  before_action :set_exhibition, only: [:destroy, :show]


  def new
    @exhibition = Exhibition.new
  end
  

  def create
    @exhibition = Exhibition.new(params_exhibition)
    @exhibition.galery = @galery
    if @exhibition.save
      flash[:success] = "Exhibition successfully created"
      redirect_to @exhibition
    else
      flash[:error] = "Something went wrong"
      render 'new'
    end
  end

  def show

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

  def params_exhibition
    params.require(:exhibition).permit(:name, :start_date, :end_date, :galery_id)
  end
end
