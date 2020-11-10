class CreateInstCareers < ActiveRecord::Migration[6.0]
  def change
    create_table :inst_careers do |t|
      t.references :institution, null: false, foreign_key: true
      t.references :career, null: false, foreign_key: true

      t.timestamps
    end
  end
end
