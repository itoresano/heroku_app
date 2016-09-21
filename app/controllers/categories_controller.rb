class CategoriesController < ApplicationController
  before_action :set_category, only: [:show, :edit, :update, :destroy]
  before_action :get_plan, only: [:new,:create]

  # GET /categories
  # GET /categories.json
  def index
    if logged_in?
      redirect_to current_user
    else
      redirect_to login_path
    end
  end

  # GET /categories/1
  # GET /categories/1.json
  def show
    if logged_in?
      @spendings = @category.spendings
      @plan = Plan.find(@category.plan_id)
    else
      redirect_to login_path
    end
  end

  # GET /categories/new
  def new
    if !@plan.nil?
      @category = Category.new
    elsif logged_in?
      redirect_to current_user
    else
      redirect_to login_path
    end
  end

  # GET /categories/1/edit
  def edit
  end

  # POST /categories
  # POST /categories.json
  def create
    @category = @plan.categories.new(category_params)

    respond_to do |format|
      if @category.save
        format.html { redirect_to @category, notice: 'Category was successfully created.' }
        format.json { render :show, status: :created, location: @category }
      else
        format.html { render :new }
        format.json { render json: @category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /categories/1
  # PATCH/PUT /categories/1.json
  def update
    respond_to do |format|
      if @category.update(category_params)
        format.html { redirect_to @category, notice: 'Category was successfully updated.' }
        format.json { render :show, status: :ok, location: @category }
      else
        format.html { render :edit }
        format.json { render json: @category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /categories/1
  # DELETE /categories/1.json
  def destroy
    @category.destroy
    respond_to do |format|
      format.html { redirect_to categories_url, notice: 'Category was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_category
      @category = Category.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def category_params
      params.require(:category).permit(:name, :description, :budget, :integer)
    end

    def get_plan
      @plan = Plan.find(params[:id_plan])
    end
end
