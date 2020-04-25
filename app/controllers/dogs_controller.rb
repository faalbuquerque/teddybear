class DogsController < ApplicationController

  def index
    @dogs = Dog.all
  end

  def new
    @dog = Dog.new
  end

  def create
    @dog = Dog.new(dog_params)

    return redirect_to @dog if @dog.save
    render :new
  end

  def show
    @dog = Dog.find(params[:id])
  end

  def edit
    @dog = Dog.find(params[:id])
  end

  def update
    @dog = Dog.find(params[:id])

    return redirect_to dog_path(@dog) if @dog.update(dog_params)
    render :edit 
  end

  def destroy
    @dog = Dog.find(params[:id])

    return redirect_to dogs_path if @dog.delete
    render dogs_path
  end

  private

  def dog_params
    params.require(:dog).permit(:name, :color, :size, :image)
  end

end
