class CreateRestaurantes < ActiveRecord::Migration[6.1]
  def change
    create_table :restaurantes do |t|
      t.string :nombre
      t.references :tipos_comidas, null: false, foreign_key: true

      t.timestamps
    end
  end
end
