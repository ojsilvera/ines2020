class CreateIndicators < ActiveRecord::Migration[6.0]
  def change
    create_table :indicators do |t|
      t.references :factor, null: false, foreign_key: true
      t.string :detalle

      t.timestamps
    end
  end
end
