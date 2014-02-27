class ExperienceItemsController < ApplicationController
  before_action :set_experience_item, only: [:show, :edit, :update, :destroy]

  # GET /experience_items
  # GET /experience_items.json
  def index
    @experience_items = ExperienceItem.all
  end

  # GET /experience_items/1
  # GET /experience_items/1.json
  def show
  end

  # GET /experience_items/new
  def new
    @experience_item = ExperienceItem.new
  end

  # GET /experience_items/1/edit
  def edit
  end

  # POST /experience_items
  # POST /experience_items.json
  def create
    @experience_item = ExperienceItem.new(experience_item_params)

    respond_to do |format|
      if @experience_item.save
        format.html { redirect_to @experience_item, notice: 'Experience item was successfully created.' }
        format.json { render action: 'show', status: :created, location: @experience_item }
      else
        format.html { render action: 'new' }
        format.json { render json: @experience_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /experience_items/1
  # PATCH/PUT /experience_items/1.json
  def update
    respond_to do |format|
      if @experience_item.update(experience_item_params)
        format.html { redirect_to @experience_item, notice: 'Experience item was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @experience_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /experience_items/1
  # DELETE /experience_items/1.json
  def destroy
    @experience_item.destroy
    respond_to do |format|
      format.html { redirect_to experience_items_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_experience_item
      @experience_item = ExperienceItem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def experience_item_params
      params.require(:experience_item).permit(:description, :experience_id)
    end
end
