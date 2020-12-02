class CreatePollBodies < ActiveRecord::Migration[6.0]
  def change
    create_table :poll_bodies do |t|
      t.references :poll_header, null: false, foreign_key: true
      t.references :question, null: false, foreign_key: true
      t.references :category_replay, null: false, foreign_key: true

      t.timestamps
    end
  end
end
