class CreateQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :questions do |t|
      t.string :detalle
      t.references :indicator, null: false, foreign_key: true

      t.timestamps
    end
  end
end
