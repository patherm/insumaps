class AdminController < ApplicationController
before_action :authenticate_user!
	def index
		@cidade = Cidade.where(params[:id])
		@cidades = Cidade.order(:nome)
		@insumo = Insumo.where(params[:id])
	end
	
end
