class VendorController < ApplicationController
    def index
      @vendors = Vendor.all
    end

    def new_add
      @vendor = Vendor.find(params[:id])
    end

    def show
      @vendor = Vendor.find(params[:id])
    end


    def new
      @vendor = Vendor.new
    end

    def create
      vendor = Vendor.new(courses_params)
      if vendor.save
        flash[:success] = "Fifa successfully created."
        redirect_to action: "index"
      else
        flash[:danger] = "Fifa failed to create."
        redirect_to action: "new"
      end

    end

    def edit
      @vendor = Vendor.find(params[:id])
    end

    def update
        @vendor = Vendor.find(params[:id])
        @vendor.num_coins += params[:vendor][:num_coins].to_i
        @vendor.save
        redirect_to action:"index"
    end
end

