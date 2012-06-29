class CreateEditoras < ActiveRecord::Migration
  def change
    create_table :editoras do |t|
      t.string :razao_social
      t.string :cnpj

      t.timestamps
    end
  end
end
