class BearsController < ApplicationController

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
    @bear = Bear.find(params[:id])
  end

  def edit
    @bear = Bear.find(params[:id])
  end

  def update
    @bear = Bear.find(params[:id])

    return redirect_to bear_path(@bear) if @bear.update(bear_params)
    render :edit 
  end

  def destroy
    @bear = Bear.find(params[:id])

    return redirect_to bears_path if @bear.delete
    render bears_path
  end

  private

  def bear_params
    params.require(:bear).permit(:name, :color, :size)
  end

end
