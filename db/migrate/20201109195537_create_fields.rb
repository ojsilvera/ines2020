class CreateFields < ActiveRecord::Migration[6.0]
  def change
    create_table :fields do |t|
      t.string :detail

      t.timestamps
    end
  end
end
