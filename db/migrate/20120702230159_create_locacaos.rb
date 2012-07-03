class CreateLocacaos < ActiveRecord::Migration
  def change
    create_table :locacaos do |t|
      t.date :data_locacao
      t.date :data_devolucao
      t.date :data_prevista_dev
      t.float :multa
      t.references :usuario
      t.references :livro

      t.timestamps
    end
    add_index :locacaos, :usuario_id
    add_index :locacaos, :livro_id
  end
end
