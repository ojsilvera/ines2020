class CreateIndicators < ActiveRecord::Migration[6.0]
  def change
    create_table :indicators do |t|
      t.string :Name
      t.references :factor, null: false, foreign_key: true

      t.timestamps
    end
  end
end
