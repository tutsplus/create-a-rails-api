class TablesController < ApplicationController
  before_action :set_table, only: [:show, :update, :destroy]

  # GET /tables
  # GET /tables.json
  def index
    @tables = Table.all

    render json: @tables
  end

  # GET /tables/1
  # GET /tables/1.json
  def show
    render json: @table
  end

  # POST /tables
  # POST /tables.json
  def create
    @table = Table.new(table_params)

    if @table.save
      render json: @table, status: :created, location: @table
    else
      render json: @table.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /tables/1
  # PATCH/PUT /tables/1.json
  def update
    @table = Table.find(params[:id])

    if @table.update(table_params)
      head :no_content
    else
      render json: @table.errors, status: :unprocessable_entity
    end
  end

  # DELETE /tables/1
  # DELETE /tables/1.json
  def destroy
    @table.destroy

    head :no_content
  end

  private

    def set_table
      @table = Table.find(params[:id])
    end

    def table_params
      params.require(:table).permit(:number, :seats)
    end
end
