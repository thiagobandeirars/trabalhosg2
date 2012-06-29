class CreateUsuarios < ActiveRecord::Migration
  def change
    create_table :usuarios do |t|
      t.string :nome
      t.string :endereco
      t.string :telefone
      t.integer :matricula
      t.references :grupo

      t.timestamps
    end
    add_index :usuarios, :grupo_id
  end
end
