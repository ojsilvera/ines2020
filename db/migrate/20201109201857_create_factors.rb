class CreateFactors < ActiveRecord::Migration[6.0]
  def change
    create_table :factors do |t|
      t.string :detail

      t.timestamps
    end
  end
end
