class CreateSistemas < ActiveRecord::Migration
  def change
    create_table :sistemas do |t|
      t.string :nome
      t.string :sigla
      t.string :descricao
      t.date :inicio
      t.date :termino
      t.boolean :em_andamento,:default=>false
      t.string :cliente

      t.timestamps null: false
    end
  end
end
