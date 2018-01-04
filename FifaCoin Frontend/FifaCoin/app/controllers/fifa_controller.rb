class FifaController < ApplicationController
  def index
    @fifas = Fifa.search(params[:search])
  end

  def show
    @fifa = Fifa.find(params[:id])
  end


  def new
    @fifa = Fifa.new
  end

  def create
    fifa = Fifa.new(courses_params)
    if fifa.save
      flash[:success] = "Fifa successfully created."
      redirect_to action: "index"
    else
      flash[:danger] = "Fifa failed to create."
      redirect_to action: "new"
    end

  end

  def edit
    @fifa = Fifa.find(params[:id])
  end
end
