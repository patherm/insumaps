class PagesController < ApplicationController

	def local
	end

	def select
		@insumo = Insumo.where(params[:id])
	end

end
