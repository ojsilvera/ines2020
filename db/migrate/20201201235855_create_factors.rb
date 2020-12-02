class CreateFactors < ActiveRecord::Migration[6.0]
  def change
    create_table :factors do |t|
      t.text :name

      t.timestamps
    end
  end
end
