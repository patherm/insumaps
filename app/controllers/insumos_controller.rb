class InsumosController < ApplicationController
  #before_action :set_insumo, only: [:show, :edit, :update, :destroy]
  before_action :set_distribuidora
  before_action :set_cidade
  # GET /insumos
  # GET /insumos.json
  def index
    #@distribuidoras = @cidade.distribuidoras
    @insumos = @distribuidora.insumos
  end

  # GET /insumos/1
  # GET /insumos/1.json
  def show
    @insumo = Insumo.find(params[:id])
  end

  # GET /insumos/new
  def new

    @insumo = @distribuidora.insumos.new
    #@insumo = @cidades.distribuidoras.insumos.new
    #@insumo.cidades.build
    #@insumo.distribuidoras.build
  end

  # GET /insumos/1/edit
  def edit
    @insumo = Insumo.find(params[:id])
  end

  # POST /insumos
  # POST /insumos.json
  def create 
    #@distribuidora = @cidade.distribuidoras
    @insumo = @distribuidora.insumos.new(insumo_params)
    #@insumo = Insumo.new(insumo_params)

    respond_to do |format|
      if @insumo.save
        format.html { redirect_to admin_path, notice: 'Insumo was successfully created.' }
        format.json { render :show, status: :created, location: @insumo }
      else
        format.html { render :new }
        format.json { render json: @insumo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /insumos/1
  # PATCH/PUT /insumos/1.json
   def update
    respond_to do |format|
      @insumo = Insumo.find(params[:id])
      if @insumo.update(insumo_params)
        format.html { redirect_to admin_path, notice: 'Insumo was successfully updated.' }
        format.json { render :show, status: :ok, location: @insumo }
      else
        format.html { render :edit }
        format.json { render json: @insumo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /insumos/1
  # DELETE /insumos/1.json
  def destroy
    @insumo = Insumo.find(params[:id])
    @insumo.destroy
    respond_to do |format|
      format.html { redirect_to insumos_url, notice: 'Insumo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

    # Use callbacks to share common setup or constraints between actions.
    def set_distribuidora
      @distribuidora = Distribuidora.find(params[:distribuidora_id])   
    end

    def set_cidade
      @cidade = Cidade.find(params[:cidade_id])   
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def insumo_params
      params.require(:insumo).permit(:tipo, :preco, :descricao, :latitude, :longitude, :icone, :foto)
      #params.require(:insumo).permit(:tipo, :preco, :descricao, :latitude, :longitude, :icone, :foto, distribuidoras_attributes:[:id, :insumo_id, :nome, :latitude, :longitude, :descricao, :icone, :foto, :_destroy], cidades_attributes:[:id, :insumo_id, :nome,:uf, :_destroy])
    end
end
