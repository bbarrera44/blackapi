module Api
class EntriesController < ApplicationController
  before_action :set_entry, only: [:show, :edit, :update, :destroy], raise: false
  skip_before_action :authenticate_user!, only: [:create], raise: false
  respond_to :json
  include RenderHelper
  # GET /entries
  # GET /entries.json
  def index
    @entries = Entry.all
  end
  def new
    @parking.present?
    render_default_format(@parking, true, 20 )
  end

  # GET /entries/1
  # GET /entries/1.json
  def show
  end

  # POST /entries
  # POST /entries.json
  def create
    @entry = Entry.new(entry_params)

    if @entry.save
      render :show, status: :created, location: @entry
    else
      render json: @entry.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /entries/1
  # PATCH/PUT /entries/1.json
  def update
    if @entry.update(entry_params)
      render :show, status: :ok, location: @entry
    else
      render json: @entry.errors, status: :unprocessable_entity
    end
  end

  # DELETE /entries/1
  # DELETE /entries/1.json
  def destroy
    @entry.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_entry
      @entry = Entry.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def entry_params
      params.require(:entry).permit(:entry_time, :exit_time, :total_time, :price, :vehicle_id, :rate_id, :parking_id)
    end
end
end