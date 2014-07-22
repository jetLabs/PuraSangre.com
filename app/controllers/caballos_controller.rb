class CaballosController < ApplicationController
  before_action :set_caballo, only: [:show, :edit, :update, :destroy]

  # GET /caballos
  # GET /caballos.json
  def index
    @caballos = Caballo.all
  end

  # GET /caballos/1
  # GET /caballos/1.json
  def show
  end

  # GET /caballos/new
  def new
    @caballo = Caballo.new
  end

  # GET /caballos/1/edit
  def edit
  end

  # POST /caballos
  # POST /caballos.json
  def create
    @caballo = Caballo.new(caballo_params)

    respond_to do |format|
      if @caballo.save
        format.html { redirect_to @caballo, notice: 'Caballo was successfully created.' }
        format.json { render action: 'show', status: :created, location: @caballo }
      else
        format.html { render action: 'new' }
        format.json { render json: @caballo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /caballos/1
  # PATCH/PUT /caballos/1.json
  def update
    respond_to do |format|
      if @caballo.update(caballo_params)
        format.html { redirect_to @caballo, notice: 'Caballo was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @caballo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /caballos/1
  # DELETE /caballos/1.json
  def destroy
    @caballo.destroy
    respond_to do |format|
      format.html { redirect_to caballos_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_caballo
      @caballo = Caballo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def caballo_params
      params.require(:caballo).permit(:sexo, :record, :age, :nombre, :precio, :imagen)
    end
end
