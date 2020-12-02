class CreateGroupFields < ActiveRecord::Migration[6.0]
  def change
    create_table :group_fields do |t|
      t.text :detail
      t.references :group, null: false, foreign_key: true
      t.references :field, null: false, foreign_key: true
      t.references :poll_header, null: false, foreign_key: true

      t.timestamps
    end
  end
end
