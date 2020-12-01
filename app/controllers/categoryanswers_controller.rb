class CategoryanswersController < ApplicationController
  before_action :set_categoryreplay, only: [:show, :edit, :update, :destroy]

  # GET /categoryanswers
  # GET /categoryanswers.json
  def index
    @categoryanswers = Categoryreplay.all
  end

  # GET /categoryanswers/1
  # GET /categoryanswers/1.json
  def show
  end

  # GET /categoryanswers/new
  def new
    @categoryreplay = Categoryreplay.new
  end

  # GET /categoryanswers/1/edit
  def edit
  end

  # POST /categoryanswers
  # POST /categoryanswers.json
  def create
    @categoryreplay = Categoryreplay.new(categoryreplay_params)

    respond_to do |format|
      if @categoryreplay.save
        format.html { redirect_to @categoryreplay, notice: 'Categoryreplay was successfully created.' }
        format.json { render :show, status: :created, location: @categoryreplay }
      else
        format.html { render :new }
        format.json { render json: @categoryreplay.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /categoryanswers/1
  # PATCH/PUT /categoryanswers/1.json
  def update
    respond_to do |format|
      if @categoryreplay.update(categoryreplay_params)
        format.html { redirect_to @categoryreplay, notice: 'Categoryreplay was successfully updated.' }
        format.json { render :show, status: :ok, location: @categoryreplay }
      else
        format.html { render :edit }
        format.json { render json: @categoryreplay.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /categoryanswers/1
  # DELETE /categoryanswers/1.json
  def destroy
    @categoryreplay.destroy
    respond_to do |format|
      format.html { redirect_to categoryanswers_url, notice: 'Categoryreplay was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_categoryreplay
      @categoryreplay = Categoryreplay.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def categoryreplay_params
      params.require(:categoryreplay).permit(:replay_id, :category_id)
    end
end
