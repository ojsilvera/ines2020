class PollHeadersController < ApplicationController
  before_action :set_poll_header, only: [:show, :edit, :update, :destroy]

  # GET /poll_headers
  # GET /poll_headers.json
  def index
    @poll_headers = PollHeader.all
  end

  # GET /poll_headers/1
  # GET /poll_headers/1.json
  def show
  end

  # GET /poll_headers/new
  def new
    @poll_header = PollHeader.new
  end

  # GET /poll_headers/1/edit
  def edit
  end

  # POST /poll_headers
  # POST /poll_headers.json
  def create
    @poll_header = PollHeader.new(poll_header_params)

    respond_to do |format|
      if @poll_header.save
        format.html { redirect_to @poll_header, notice: 'Poll header was successfully created.' }
        format.json { render :show, status: :created, location: @poll_header }
      else
        format.html { render :new }
        format.json { render json: @poll_header.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /poll_headers/1
  # PATCH/PUT /poll_headers/1.json
  def update
    respond_to do |format|
      if @poll_header.update(poll_header_params)
        format.html { redirect_to @poll_header, notice: 'Poll header was successfully updated.' }
        format.json { render :show, status: :ok, location: @poll_header }
      else
        format.html { render :edit }
        format.json { render json: @poll_header.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /poll_headers/1
  # DELETE /poll_headers/1.json
  def destroy
    @poll_header.destroy
    respond_to do |format|
      format.html { redirect_to poll_headers_url, notice: 'Poll header was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_poll_header
      @poll_header = PollHeader.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def poll_header_params
      params.require(:poll_header).permit(:edad, :date, :institution_id, :gender_id)
    end
end
