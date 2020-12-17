module Admin
  class GroupFieldsController < ApplicationController
    before_action :set_group_field, only: [:show, :edit, :update, :destroy]

    # GET /group_fields
    # GET /group_fields.json
    def index
      @group_fields = GroupField.all
    end

    # GET /group_fields/1
    # GET /group_fields/1.json
    def show
    end

    # GET /group_fields/new
    def new
      @group_field = GroupField.new
    end

    # GET /group_fields/1/edit
    def edit
    end

    # POST /group_fields
    # POST /group_fields.json
    def create
      @group_field = GroupField.new(group_field_params)

      respond_to do |format|
        if @group_field.save
          format.html { redirect_to admin_group_field_path(@group_field), notice: 'Group field was successfully created.' }
          format.json { render :show, status: :created, location: @group_field }
        else
          format.html { render :new }
          format.json { render json: @group_field.errors, status: :unprocessable_entity }
        end
      end
    end

    # PATCH/PUT /group_fields/1
    # PATCH/PUT /group_fields/1.json
    def update
      respond_to do |format|
        if @group_field.update(group_field_params)
          format.html { redirect_to admin_group_field_path(@group_field), notice: 'Group field was successfully updated.' }
          format.json { render :show, status: :ok, location: @group_field }
        else
          format.html { render :edit }
          format.json { render json: @group_field.errors, status: :unprocessable_entity }
        end
      end
    end

    # DELETE /group_fields/1
    # DELETE /group_fields/1.json
    def destroy
      @group_field.destroy
      respond_to do |format|
        format.html { redirect_to admin_group_fields_url, notice: 'Group field was successfully destroyed.' }
        format.json { head :no_content }
      end
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_group_field
        @group_field = GroupField.find(params[:id])
      end

      # Only allow a list of trusted parameters through.
      def group_field_params
        params.require(:group_field).permit(:detail, :group_id, :field_id)
      end
  end
end
