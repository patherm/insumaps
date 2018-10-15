class CreateInsumos < ActiveRecord::Migration[5.1]
  def change
    create_table :insumos do |t|
      t.string :tipo
      t.decimal :preco
      t.text :descricao
      t.float :latitude
      t.float :longitude
      t.string :icone
      t.string :foto

      t.timestamps
    end
  end
end
