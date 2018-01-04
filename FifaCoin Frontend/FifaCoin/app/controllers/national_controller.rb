class NationalController < ApplicationController
  def index
    @nationals = National.all
  end

  def new_add
    @national = National.find(params[:id])
  end

  def show
    @national = National.find(params[:id])
  end


  def new
    @national = National.new
  end

  def create
    national = National.new(courses_params)
    national.num_coins = 100
    if national.save
      flash[:success] = "Fifa successfully created."
      redirect_to action: "index"
    else
      flash[:danger] = "Fifa failed to create."
      redirect_to action: "new"
    end

  end

  def edit
    @national = National.find(params[:id])
  end

  def update
        @national = National.find(params[:id])
        @national.num_coins += params[:national][:num_coins].to_i
        @national.save
        # flash.now[:success] = "Coin successfully transfered"
        redirect_to action:"index"
  end
end
