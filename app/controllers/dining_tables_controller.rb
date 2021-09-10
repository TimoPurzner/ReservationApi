class DiningTablesController < ApplicationController
  before_action :set_dining_table, only: [:show, :update, :destroy]

  # GET /dining_tables
  def index
    @dining_tables = DiningTable.all

    render json: @dining_tables
  end

  # GET /dining_tables/1
  def show
    render json: @dining_table
  end

  # POST /dining_tables
  def create
    @dining_table = DiningTable.new(dining_table_params)

    if @dining_table.save
      render json: @dining_table, status: :created, location: @dining_table
    else
      render json: @dining_table.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /dining_tables/1
  def update
    if @dining_table.update(dining_table_params)
      render json: @dining_table
    else
      render json: @dining_table.errors, status: :unprocessable_entity
    end
  end

  # DELETE /dining_tables/1
  def destroy
    @dining_table.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dining_table
      @dining_table = DiningTable.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def dining_table_params
      params.fetch(:dining_table, {})
    end
end
