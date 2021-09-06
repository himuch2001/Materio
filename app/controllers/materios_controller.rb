class MateriosController < ApplicationController
  before_action :set_materio, only: %i[ show edit update destroy ]

  # GET /materios or /materios.json
  def index
    @materios = Materio.all
  end

  # GET /materios/1 or /materios/1.json
  def show
  end

  # GET /materios/new
  def new
    @materio = Materio.new
  end

  # GET /materios/1/edit
  def edit
  end

  # POST /materios or /materios.json
  def create
    @materio = Materio.new(materio_params)

    respond_to do |format|
      if @materio.save
        format.html { redirect_to @materio, notice: "Materio was successfully created." }
        format.json { render :show, status: :created, location: @materio }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @materio.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /materios/1 or /materios/1.json
  def update
    respond_to do |format|
      if @materio.update(materio_params)
        format.html { redirect_to @materio, notice: "Materio was successfully updated." }
        format.json { render :show, status: :ok, location: @materio }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @materio.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /materios/1 or /materios/1.json
  def destroy
    @materio.destroy
    respond_to do |format|
      format.html { redirect_to materios_url, notice: "Materio was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_materio
      @materio = Materio.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def materio_params
      params.require(:materio).permit(:your_name, :your_email, :Company, :apr_budget, :optional, :drop_box)
    end
end
