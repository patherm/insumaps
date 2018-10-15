class Distribuidora < ApplicationRecord
	validates :nome, :latitude, :longitude, :descricao, presence:true, allow_blank: true
	validates_length_of :descricao, maximum: 200
	validates_format_of :icone, allow_blank:true, with: /\w+\.(gif|jpeg|png)\z/i, message:"Utilizar somente arquivos GIF, JPEG ou PNG"
	validates_format_of :foto, allow_blank:true, with: /\w+\.(gif|jpeg|png)\z/i, message:"Utilizar somente arquivos GIF, JPEG ou PNG"
	#belongs_to :insumo, optional: true
  	belongs_to :cidade, optional: true
  	has_many :insumos, dependent: :destroy
end
