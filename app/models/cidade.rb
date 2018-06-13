class Cidade < ApplicationRecord
	validates :nome,:uf, presence:true
	validates_uniqueness_of :nome, :scope => :uf
	
	UF = %w(AC AL AP AM BA CE DF ES GO MA MT MS MG PA PB PR PE PI RJ RN RS RO RR SC SP SE TO)
	validates_inclusion_of :uf, in: UF

	def self.created_at
		where('created_at <= ?' , Time.now).order('created_at desc')
	end

end
