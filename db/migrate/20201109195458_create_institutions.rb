class CreateInstitutions < ActiveRecord::Migration[6.0]
  def change
    create_table :institutions do |t|
      t.string :detail
      t.integer :poblationTotal
      t.integer :muestra

      t.timestamps
    end
  end
end
