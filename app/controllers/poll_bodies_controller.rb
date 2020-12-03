class PollBodiesController < ApplicationController
  before_action :set_poll_body, only: [:show, :edit, :update, :destroy]

  # GET /poll_bodies
  # GET /poll_bodies.json
  def index
    @poll_bodies = PollBody.all
  end

  # GET /poll_bodies/1
  # GET /poll_bodies/1.json
  def show
  end

  # GET /poll_bodies/new
  def new
    @poll_body = PollBody.new
  end

  # GET /poll_bodies/1/edit
  def edit
  end

  # POST /poll_bodies
  # POST /poll_bodies.json
  def create
    @poll_body = PollBody.new(poll_body_params)

    respond_to do |format|
      if @poll_body.save
        format.html { redirect_to @poll_body, notice: 'Poll body was successfully created.' }
        format.json { render :show, status: :created, location: @poll_body }
      else
        format.html { render :new }
        format.json { render json: @poll_body.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /poll_bodies/1
  # PATCH/PUT /poll_bodies/1.json
  def update
    respond_to do |format|
      if @poll_body.update(poll_body_params)
        format.html { redirect_to @poll_body, notice: 'Poll body was successfully updated.' }
        format.json { render :show, status: :ok, location: @poll_body }
      else
        format.html { render :edit }
        format.json { render json: @poll_body.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /poll_bodies/1
  # DELETE /poll_bodies/1.json
  def destroy
    @poll_body.destroy
    respond_to do |format|
      format.html { redirect_to poll_bodies_url, notice: 'Poll body was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_poll_body
      @poll_body = PollBody.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def poll_body_params
      params.require(:poll_body).permit(:poll_header_id, :question_id, :category_replay_id)
    end
end
