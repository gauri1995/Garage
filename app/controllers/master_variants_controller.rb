class MasterVariantsController < ApplicationController
  before_action :set_master_variant, only: [:show, :edit, :update, :destroy]

  # GET /master_variants
  # GET /master_variants.json
  def index
    @master_variants = MasterVariant.all
  end

  # GET /master_variants/1
  # GET /master_variants/1.json
  def show
  end

  # GET /master_variants/new
  def new
    @master_variant = MasterVariant.new
  end

  # GET /master_variants/1/edit
  def edit
  end

  # POST /master_variants
  # POST /master_variants.json
  def create
    @master_variant = MasterVariant.new(master_variant_params)

    respond_to do |format|
      if @master_variant.save
        format.html { redirect_to @master_variant, notice: 'Master variant was successfully created.' }
        format.json { render :show, status: :created, location: @master_variant }
      else
        format.html { render :new }
        format.json { render json: @master_variant.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /master_variants/1
  # PATCH/PUT /master_variants/1.json
  def update
    respond_to do |format|
      if @master_variant.update(master_variant_params)
        format.html { redirect_to @master_variant, notice: 'Master variant was successfully updated.' }
        format.json { render :show, status: :ok, location: @master_variant }
      else
        format.html { render :edit }
        format.json { render json: @master_variant.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /master_variants/1
  # DELETE /master_variants/1.json
  def destroy
    @master_variant.destroy
    respond_to do |format|
      format.html { redirect_to master_variants_url, notice: 'Master variant was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_master_variant
      @master_variant = MasterVariant.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def master_variant_params
      params.require(:master_variant).permit(:variant)
    end
end
