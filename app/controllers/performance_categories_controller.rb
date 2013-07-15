class PerformanceCategoriesController < ApplicationController
  # GET /performance_categories
  # GET /performance_categories.json
  def index
    @performance_categories = PerformanceCategory.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @performance_categories }
    end
  end

  # GET /performance_categories/1
  # GET /performance_categories/1.json
  def show
    @performance_category = PerformanceCategory.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @performance_category }
    end
  end

  # GET /performance_categories/new
  # GET /performance_categories/new.json
  def new
    @performance_category = PerformanceCategory.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @performance_category }
    end
  end

  # GET /performance_categories/1/edit
  def edit
    @performance_category = PerformanceCategory.find(params[:id])
  end

  # POST /performance_categories
  # POST /performance_categories.json
  def create
    params[:performance_category][:begin_date] = params[:performance_category][:begin_date].delete('-')
    params[:performance_category][:end_date] = params[:performance_category][:end_date].delete('-')

    @performance_category = PerformanceCategory.new(params[:performance_category])

    respond_to do |format|
      if @performance_category.save
        format.html { redirect_to @performance_category, notice: 'Performance category was successfully created.' }
        format.json { render json: @performance_category, status: :created, location: @performance_category }
      else
        format.html { render action: "new" }
        format.json { render json: @performance_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /performance_categories/1
  # PUT /performance_categories/1.json
  def update
    @performance_category = PerformanceCategory.find(params[:id])

    respond_to do |format|
      if @performance_category.update_attributes(params[:performance_category])
        format.html { redirect_to @performance_category, notice: 'Performance category was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @performance_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /performance_categories/1
  # DELETE /performance_categories/1.json
  def destroy
    @performance_category = PerformanceCategory.find(params[:id])
    @performance_category.destroy

    respond_to do |format|
      format.html { redirect_to performance_categories_url }
      format.json { head :no_content }
    end
  end
end
