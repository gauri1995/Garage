class MasterStartYearsController < ApplicationController
  before_action :set_master_start_year, only: [:show, :edit, :update, :destroy]

  # GET /master_start_years
  # GET /master_start_years.json
  def index
    @master_start_years = MasterStartYear.all
  end

  # GET /master_start_years/1
  # GET /master_start_years/1.json
  def show
  end

  # GET /master_start_years/new
  def new
    @master_start_year = MasterStartYear.new
  end

  # GET /master_start_years/1/edit
  def edit
  end

  # POST /master_start_years
  # POST /master_start_years.json
  def create
    @master_start_year = MasterStartYear.new(master_start_year_params)

    respond_to do |format|
      if @master_start_year.save
        format.html { redirect_to @master_start_year, notice: 'Master start year was successfully created.' }
        format.json { render :show, status: :created, location: @master_start_year }
      else
        format.html { render :new }
        format.json { render json: @master_start_year.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /master_start_years/1
  # PATCH/PUT /master_start_years/1.json
  def update
    respond_to do |format|
      if @master_start_year.update(master_start_year_params)
        format.html { redirect_to @master_start_year, notice: 'Master start year was successfully updated.' }
        format.json { render :show, status: :ok, location: @master_start_year }
      else
        format.html { render :edit }
        format.json { render json: @master_start_year.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /master_start_years/1
  # DELETE /master_start_years/1.json
  def destroy
    @master_start_year.destroy
    respond_to do |format|
      format.html { redirect_to master_start_years_url, notice: 'Master start year was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_master_start_year
      @master_start_year = MasterStartYear.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def master_start_year_params
      params.require(:master_start_year).permit(:year)
    end
end
