class AddImagemToSistemas < ActiveRecord::Migration
  def change
    add_column :sistemas, :imagem, :string
  end
end
