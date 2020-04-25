class RabbitsController < ApplicationController

  def index
    @rabbits = Rabbit.all
  end

  def new
    @rabbit = Rabbit.new
  end

  def create
    @rabbit = Rabbit.new(rabbit_params)

    return redirect_to @rabbit if @rabbit.save
    render :new
  end

  def show
    @rabbit = Rabbit.find(params[:id])
  end

  def edit
    @rabbit = Rabbit.find(params[:id])
  end

  def update
    @rabbit = Rabbit.find(params[:id])

    return redirect_to rabbit_path(@rabbit) if @rabbit.update(rabbit_params)
    render :edit 
  end

  def destroy
    @rabbit = Rabbit.find(params[:id])

    return redirect_to rabbits_path if @rabbit.delete
    render rabbits_path
  end

  private

  def rabbit_params
    params.require(:rabbit).permit(:name, :color, :size)
  end

end
