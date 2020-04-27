class BearsController < ApplicationController
  before_action :find_bear, only: [:show, :edit, :update, :destroy]

  def index
    @bears = Bear.all
  end

  def new
    @bear = Bear.new
  end

  def create
    @bear = Bear.new(bear_params)

    return redirect_to @bear if @bear.save
    render :new
  end

  def show
  end

  def edit
  end

  def update

    return redirect_to bear_path(@bear) if @bear.update(bear_params)
    render :edit 
  end

  def destroy

    return redirect_to bears_path if @bear.delete
    render bears_path
  end

  private

  def bear_params
    params.require(:bear).permit(:name, :color, :size, :image)
  end

  def find_bear
    @bear = Bear.find(params[:id])
  end
end
