class AddDistribuidoraToInsumo < ActiveRecord::Migration[5.1]
  def change
    add_reference :insumos, :distribuidora, foreign_key: true
  end
end
