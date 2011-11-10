class ProductcategoriesController < ApplicationController
  # GET /productcategories
  # GET /productcategories.json
  def index
    @productcategories = Productcategory.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @productcategories }
    end
  end

  # GET /productcategories/1
  # GET /productcategories/1.json
  def show
    @productcategory = Productcategory.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @productcategory }
    end
  end

  # GET /productcategories/new
  # GET /productcategories/new.json
  def new
    @productcategory = Productcategory.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @productcategory }
    end
  end

  # GET /productcategories/1/edit
  def edit
    @productcategory = Productcategory.find(params[:id])
  end

  # POST /productcategories
  # POST /productcategories.json
  def create
    @productcategory = Productcategory.new(params[:productcategory])

    respond_to do |format|
      if @productcategory.save
        format.html { redirect_to @productcategory, notice: 'Productcategory was successfully created.' }
        format.json { render json: @productcategory, status: :created, location: @productcategory }
      else
        format.html { render action: "new" }
        format.json { render json: @productcategory.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /productcategories/1
  # PUT /productcategories/1.json
  def update
    @productcategory = Productcategory.find(params[:id])

    respond_to do |format|
      if @productcategory.update_attributes(params[:productcategory])
        format.html { redirect_to @productcategory, notice: 'Productcategory was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @productcategory.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /productcategories/1
  # DELETE /productcategories/1.json
  def destroy
    @productcategory = Productcategory.find(params[:id])
    @productcategory.destroy

    respond_to do |format|
      format.html { redirect_to productcategories_url }
      format.json { head :ok }
    end
  end
end
