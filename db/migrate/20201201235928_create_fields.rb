class CreateFields < ActiveRecord::Migration[6.0]
  def change
    create_table :fields do |t|
      t.text :name

      t.timestamps
    end
  end
end
