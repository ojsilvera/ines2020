class CreatePollHeaders < ActiveRecord::Migration[6.0]
  def change
    create_table :poll_headers, id: false do |t|
      t.string :id, null: false
      t.integer :age
      t.references :gender, null: false, foreign_key: true
      t.references :institution, null: false, foreign_key: true

      t.timestamps
    end
    add_index :poll_headers, :id, unique: true
  end
end
