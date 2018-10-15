class AddInsumoToCidades < ActiveRecord::Migration[5.1]
  def change
    add_reference :cidades, :insumo, foreign_key: true
  end
end
