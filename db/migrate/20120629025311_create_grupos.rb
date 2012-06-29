class CreateGrupos < ActiveRecord::Migration
  def change
    create_table :grupos do |t|
      t.string :descricao
      t.float :multa

      t.timestamps
    end
  end
end
