class CreateCategorialivros < ActiveRecord::Migration
  def change
    create_table :categorialivros do |t|
      t.string :descricao

      t.timestamps
    end
  end
end
