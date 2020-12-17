class CreatePollBodies < ActiveRecord::Migration[6.0]
  def change
    create_table :poll_bodies do |t|
      # t.string :code, null: false, unique: true
      t.references :question, null: false, foreign_key: true
      t.references :poll_header, null: false, foreign_key: true, type: :string

      t.timestamps
    end
  end
end
