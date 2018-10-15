class CidadesController < ApplicationController
before_action :authenticate_user!

	def index
		 @cidades = Cidade.created_at 
	end

	def show
		@cidade = Cidade.find(params[:id])
	end

	def edit
		@cidade = Cidade.find(params[:id])
	end

	def update
		@cidade = Cidade.find(params[:id])
		if @cidade.update(cidade_params)
			redirect_to cidades_path, notice:"Cidade modificada com sucesso!"
		else
			render :edit
		end

	end

	def new
		@cidade = Cidade.new
		#@cidade.distribuidoras.build
	end

	def create
		@cidade = Cidade.new(cidade_params)
    	respond_to do |format|
      		if @cidade.save
        		format.html { redirect_to admin_path, notice: 'cidade was successfully created.' }
        		format.json { render :show, status: :created, location: @cidade }
      		else
        		format.html { render :new }
        		format.json { render json: @cidade.errors, status: :unprocessable_entity }
      		end
    	end
	end

	def destroy
		@cidade = Cidade.find(params[:id])
		@cidade.destroy
		redirect_to cidades_url, alert:"Cidade apagada com sucesso!"
	end

	private

	def cidade_params
		#params.require(:cidade).permit(:nome,:uf, distribuidoras_attributes:[:id, :cidade_id, :nome, :latitude, :longitude, :descricao, :icone, :foto, :_destroy])
	params.require(:cidade).permit(:nome,:uf)
	
	end

end
