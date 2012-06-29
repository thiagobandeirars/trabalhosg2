class CreateLivros < ActiveRecord::Migration
  def change
    create_table :livros do |t|
      t.string :titulo
      t.string :subtitulo
      t.string :autor
      t.integer :quantidade
      t.integer :prazo_entrega
      t.string :isbn
      t.date :data_lancamento
      t.integer :edicao
      t.references :editora
      t.references :categorialivro

      t.timestamps
    end
    add_index :livros, :editora_id
    add_index :livros, :categorialivro_id
  end
end
