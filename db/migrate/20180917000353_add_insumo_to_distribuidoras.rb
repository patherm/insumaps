class AddInsumoToDistribuidoras < ActiveRecord::Migration[5.1]
  def change
    add_reference :distribuidoras, :insumo, foreign_key: true
  end
end
