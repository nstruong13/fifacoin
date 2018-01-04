class LocalController < ApplicationController
    def index
      @locals = Local.all
    end

    def new_add
      @local = Local.find(params[:id])
    end

    def show
      @local = Local.find(params[:id])
    end


    def new
      @local = Local.new
    end

    def create
      local = Local.new(courses_params)
      if local.save
        flash[:success] = "Fifa successfully created."
        redirect_to action: "index"
      else
        flash[:danger] = "Fifa failed to create."
        redirect_to action: "new"
      end

    end

    def edit
      @local = Local.find(params[:id])
    end

    def update
        @local = Local.find(params[:id])
        @local.num_coins += params[:local][:num_coins].to_i
        @local.save
        redirect_to action:"index"
    end
end
