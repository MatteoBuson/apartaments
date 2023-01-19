class CreateApartaments < ActiveRecord::Migration[7.0]
  def change
    create_table :apartaments do |t|
      t.text :titolo
      t.text :luogo
      t.boolean :piscina
      t.text :bagno
      t.boolean :vista_mare
      t.text :cucina

      t.timestamps
    end
  end
end
