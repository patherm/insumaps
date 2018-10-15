class CreateDistribuidoras < ActiveRecord::Migration[5.1]
  def change
    create_table :distribuidoras do |t|
      t.string :nome
      t.float :latitude
      t.float :longitude
      t.text :descricao
      t.string :icone
      t.string :foto
      t.references :cidade, index:true, foreign_key: true

      t.timestamps
    end
  end
end
