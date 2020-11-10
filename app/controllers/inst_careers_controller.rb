class InstCareersController < ApplicationController
  before_action :set_inst_career, only: [:show, :edit, :update, :destroy]

  # GET /inst_careers
  # GET /inst_careers.json
  def index
    @inst_careers = InstCareer.all
  end

  # GET /inst_careers/1
  # GET /inst_careers/1.json
  def show
  end

  # GET /inst_careers/new
  def new
    @inst_career = InstCareer.new
  end

  # GET /inst_careers/1/edit
  def edit
  end

  # POST /inst_careers
  # POST /inst_careers.json
  def create
    @inst_career = InstCareer.new(inst_career_params)

    respond_to do |format|
      if @inst_career.save
        format.html { redirect_to @inst_career, notice: 'Inst career was successfully created.' }
        format.json { render :show, status: :created, location: @inst_career }
      else
        format.html { render :new }
        format.json { render json: @inst_career.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /inst_careers/1
  # PATCH/PUT /inst_careers/1.json
  def update
    respond_to do |format|
      if @inst_career.update(inst_career_params)
        format.html { redirect_to @inst_career, notice: 'Inst career was successfully updated.' }
        format.json { render :show, status: :ok, location: @inst_career }
      else
        format.html { render :edit }
        format.json { render json: @inst_career.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /inst_careers/1
  # DELETE /inst_careers/1.json
  def destroy
    @inst_career.destroy
    respond_to do |format|
      format.html { redirect_to inst_careers_url, notice: 'Inst career was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_inst_career
      @inst_career = InstCareer.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def inst_career_params
      params.require(:inst_career).permit(:institution_id, :career_id)
    end
end
