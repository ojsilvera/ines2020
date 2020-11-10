class CreateFactors < ActiveRecord::Migration[6.0]
  def change
    create_table :factors do |t|
      t.string :Name

      t.timestamps
    end
  end
end
