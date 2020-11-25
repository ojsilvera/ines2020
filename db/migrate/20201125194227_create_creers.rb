class CreateCreers < ActiveRecord::Migration[6.0]
  def change
    create_table :creers do |t|
      t.string :name

      t.timestamps
    end
  end
end
