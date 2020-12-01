class CreatePollBodies < ActiveRecord::Migration[6.0]
  def change
    create_table :poll_bodies do |t|
      t.references :question, null: false, foreign_key: true
      t.references :categoryanswers, null: false, foreign_key: true
      t.references :poll_header, null: false, foreign_key: true

      t.timestamps
    end
  end
end
