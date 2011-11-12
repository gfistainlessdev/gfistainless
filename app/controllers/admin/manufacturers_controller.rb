class Admin::ManufacturersController < ApplicationController
  def index
    @manufacturers = Manufacturer.all
  end

  def show
    @manufacturer = Manufacturer.find(params[:id])
  end

  def new
    @manufacturer = Manufacturer.new
  end

  def create
    @manufacturer = Manufacturer.new(params[:manufacturer])
    if @manufacturer.save
      redirect_to [:admin, @manufacturer], :notice => "Successfully created manufacturer."
    else
      render :action => 'new'
    end
  end

  def edit
    @manufacturer = Manufacturer.find(params[:id])
  end

  def update
    @manufacturer = Manufacturer.find(params[:id])
    if @manufacturer.update_attributes(params[:manufacturer])
      redirect_to [:admin, @manufacturer], :notice  => "Successfully updated manufacturer."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @manufacturer = Manufacturer.find(params[:id])
    @manufacturer.destroy
    redirect_to admin_manufacturers_url, :notice => "Successfully destroyed manufacturer."
  end
end
