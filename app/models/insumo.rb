class Insumo < ApplicationRecord
	#has_many :distribuidoras, dependent: :destroy
	#has_many :cidades
	belongs_to :distribuidoras, optional: true
	mount_uploader :foto, ImageUploader
  	#belongs_to :cidade, optional: true
  	#accepts_nested_attributes_for :distribuidoras, allow_destroy: true
  	#accepts_nested_attributes_for :cidades, allow_destroy: true
	validates :tipo, :preco, :latitude, :longitude, :descricao, presence:true, allow_blank:true
	validates_length_of :descricao, maximum: 200
	validates_format_of :icone, allow_blank:true, with: /\w+\.(gif|jpeg|png)\z/i, message:"Utilizar somente arquivos GIF, JPEG ou PNG"
	#validates_format_of :foto, allow_blank:true, with: /\w+\.(gif|jpeg|png)\z/i, message:"Utilizar somente arquivos GIF, JPEG ou PNG"

	#validates_associated :distribuidoras
	#validates_associated :cidades
	validates_processing_of :foto
	validate :image_size_validation
 
private
  
  def image_size_validation
    errors[:foto] << "should be less than 500KB" if foto.size > 0.5.megabytes
  end

end
