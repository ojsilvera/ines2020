class CreersController < ApplicationController
  before_action :set_creer, only: [:show, :edit, :update, :destroy]

  # GET /creers
  # GET /creers.json
  def index
    @creers = Creer.all
  end

  # GET /creers/1
  # GET /creers/1.json
  def show
  end

  # GET /creers/new
  def new
    @creer = Creer.new
  end

  # GET /creers/1/edit
  def edit
  end

  # POST /creers
  # POST /creers.json
  def create
    @creer = Creer.new(creer_params)

    respond_to do |format|
      if @creer.save
        format.html { redirect_to @creer, notice: 'Creer was successfully created.' }
        format.json { render :show, status: :created, location: @creer }
      else
        format.html { render :new }
        format.json { render json: @creer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /creers/1
  # PATCH/PUT /creers/1.json
  def update
    respond_to do |format|
      if @creer.update(creer_params)
        format.html { redirect_to @creer, notice: 'Creer was successfully updated.' }
        format.json { render :show, status: :ok, location: @creer }
      else
        format.html { render :edit }
        format.json { render json: @creer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /creers/1
  # DELETE /creers/1.json
  def destroy
    @creer.destroy
    respond_to do |format|
      format.html { redirect_to creers_url, notice: 'Creer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_creer
      @creer = Creer.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def creer_params
      params.require(:creer).permit(:name)
    end
end
