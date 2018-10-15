class DistribuidorasController < ApplicationController
	before_action :authenticate_user!
	before_action :set_cidade

	def index
		 @distribuidoras = @cidade.distribuidoras
	end

	def edit
		@distribuidora = Distribuidora.find(params[:id])
	end

	def update
		@distribuidora = Distribuidora.find(params[:id])
		respond_to do |format|
      if @distribuidora.update(distribuidora_params)
        format.html { redirect_to cidade_distribuidoras_path(@cidade), notice: 'distribuidora was successfully updated.' }
        format.json { render :show, status: :ok, location: @distribuidora }
      else
        format.html { render :edit }
        format.json { render json: @distribuidora.errors, status: :unprocessable_entity }
      end
    end
	end

	def show
		@distribuidora = Distribuidora.find(params[:id])
	end

	def new
		@distribuidora = @cidade.distribuidoras.new
	end

	def create
		@distribuidora = @cidade.distribuidoras.new(distribuidora_params)
    	respond_to do |format|
      		if @distribuidora.save
        		format.html { redirect_to admin_path, notice: 'Distribuidora was successfully created.' }
        		format.json { render :show, status: :created, location: @distribuidora }
      		else
        		format.html { render :new }
        		format.json { render json: @distribuidora.errors, status: :unprocessable_entity }
      		end
    	end
	end

	def destroy
		@distribuidora = Distribuidora.find(params[:id])
		@distribuidora.destroy
		redirect_to distribuidoras_url, alert:"Distribuidora apagada com sucesso!"
	end

	private

		def distribuidora_params
			params.require(:distribuidora).permit(:nome, :latitude, :longitude, :descricao, :icone, :foto)
		end

		def set_cidade
			@cidade = Cidade.find(params[:cidade_id])		
		end

end
