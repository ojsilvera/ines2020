class CreateCategoryAnswers < ActiveRecord::Migration[6.0]
  def change
    create_table :category_answers do |t|
      t.references :replay, null: false, foreign_key: true
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
