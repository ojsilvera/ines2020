module Admin
  class AnswersController < ApplicationController
    before_action :set_replay, only: [:show, :edit, :update, :destroy]

    # GET /answers
    # GET /answers.json
    def index
      @answers = Replay.all
    end

    # GET /answers/1
    # GET /answers/1.json
    def show
    end

    # GET /answers/new
    def new
      @replay = Replay.new
    end

    # GET /answers/1/edit
    def edit
    end

    # POST /answers
    # POST /answers.json
    def create
      @replay = Replay.new(replay_params)

      respond_to do |format|
        if @replay.save
          format.html { redirect_to admin_replay_path(@replay), notice: 'Replay was successfully created.' }
          format.json { render :show, status: :created, location: @replay }
        else
          format.html { render :new }
          format.json { render json: @replay.errors, status: :unprocessable_entity }
        end
      end
    end

    # PATCH/PUT /answers/1
    # PATCH/PUT /answers/1.json
    def update
      respond_to do |format|
        if @replay.update(replay_params)
          format.html { redirect_to admin_replay_path(@replay), notice: 'Replay was successfully updated.' }
          format.json { render :show, status: :ok, location: @replay }
        else
          format.html { render :edit }
          format.json { render json: @replay.errors, status: :unprocessable_entity }
        end
      end
    end

    # DELETE /answers/1
    # DELETE /answers/1.json
    def destroy
      @replay.destroy
      respond_to do |format|
        format.html { redirect_to admin_answers_path, notice: 'Replay was successfully destroyed.' }
        format.json { head :no_content }
      end
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_replay
        @replay = Replay.find(params[:id])
      end

      # Only allow a list of trusted parameters through.
      def replay_params
        params.require(:replay).permit(:description)
      end
  end
end