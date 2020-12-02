class CategoryAnswersController < ApplicationController
  before_action :set_category_replay, only: [:show, :edit, :update, :destroy]

  # GET /category_answers
  # GET /category_answers.json
  def index
    @category_answers = CategoryReplay.all
  end

  # GET /category_answers/1
  # GET /category_answers/1.json
  def show
  end

  # GET /category_answers/new
  def new
    @category_replay = CategoryReplay.new
  end

  # GET /category_answers/1/edit
  def edit
  end

  # POST /category_answers
  # POST /category_answers.json
  def create
    @category_replay = CategoryReplay.new(category_replay_params)

    respond_to do |format|
      if @category_replay.save
        format.html { redirect_to @category_replay, notice: 'Category replay was successfully created.' }
        format.json { render :show, status: :created, location: @category_replay }
      else
        format.html { render :new }
        format.json { render json: @category_replay.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /category_answers/1
  # PATCH/PUT /category_answers/1.json
  def update
    respond_to do |format|
      if @category_replay.update(category_replay_params)
        format.html { redirect_to @category_replay, notice: 'Category replay was successfully updated.' }
        format.json { render :show, status: :ok, location: @category_replay }
      else
        format.html { render :edit }
        format.json { render json: @category_replay.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /category_answers/1
  # DELETE /category_answers/1.json
  def destroy
    @category_replay.destroy
    respond_to do |format|
      format.html { redirect_to category_answers_url, notice: 'Category replay was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_category_replay
      @category_replay = CategoryReplay.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def category_replay_params
      params.require(:category_replay).permit(:replay_id, :category_id)
    end
end
