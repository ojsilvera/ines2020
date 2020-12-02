class CreateInstitutions < ActiveRecord::Migration[6.0]
  def change
    create_table :institutions do |t|
      t.string :name
      t.integer :totalPopulation
      t.integer :sample

      t.timestamps
    end
  end
end
