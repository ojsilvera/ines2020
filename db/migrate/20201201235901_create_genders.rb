class CreateGenders < ActiveRecord::Migration[6.0]
  def change
    create_table :genders do |t|
      t.text :name

      t.timestamps
    end
  end
end
