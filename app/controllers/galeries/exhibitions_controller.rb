class Galeries::ExhibitionsController < ApplicationController
  before_action :set_galery
  def new
    @exhibition = Exhibition.new
  end
  
  def create
    @exhibition = Exhibition.new(params_exhibition)
    @exhibition.galery = @galery
    if @exhibition.save
      flash[:success] = "Exhibition successfully created"
      render(template: 'exhibitions/show')
    else
      flash[:error] = "Something went wrong"
      render 'new'
    end
  end

  private

  def set_galery
    @galery = Galery.find(params[:galery_id])
  end

  def params_exhibition
    params.require(:exhibition).permit(:name, :start_date, :end_date, :artist, :video, :galery_id)
  end

end