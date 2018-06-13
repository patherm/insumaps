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
			redirect_to @cidade, notice:"Cidade modificada com sucesso!"
		else
			render :edit
		end

	end

	def new
		@cidade = Cidade.new
	end

	def create
		@cidade = Cidade.new(cidade_params)
		if @cidade.save
			redirect_to @cidade, notice:"Cidade criada com sucesso!"
		else
			render :new
		end
	end

	def destroy
		@cidade = Cidade.find(params[:id])
		@cidade.destroy
		redirect_to cidades_url, alert:"Cidade apagada com sucesso!"
	end

	private

	def cidade_params
		params.require(:cidade).permit(:nome,:uf)
	end

end
