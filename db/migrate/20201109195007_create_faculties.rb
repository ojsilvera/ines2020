class CreateFaculties < ActiveRecord::Migration[6.0]
  def change
    create_table :faculties do |t|
      t.string :detalle

      t.timestamps
    end
  end
end
