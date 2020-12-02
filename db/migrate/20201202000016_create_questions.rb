class CreateQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :questions do |t|
      t.text :detail
      t.references :category, null: false, foreign_key: true
      t.references :indicator, null: false, foreign_key: true

      t.timestamps
    end
  end
end
