class Cidade < ApplicationRecord
	has_many :distribuidoras, dependent: :destroy
	has_many :insumos, through: :distribuidoras, dependent: :destroy
	#belongs_to :insumo, optional: true
	validates :nome,:uf, presence:true, allow_blank: true
	validates_uniqueness_of :nome, :scope => :uf

	#accepts_nested_attributes_for :distribuidoras, allow_destroy: true
	#validates_associated :distribuidoras
	
	UF = %w(AC AL AP AM BA CE DF ES GO MA MT MS MG PA PB PR PE PI RJ RN RS RO RR SC SP SE TO)
	validates_inclusion_of :uf, in: UF

	def self.created_at
		where('created_at <= ?' , Time.now).order('created_at desc')
	end


end
