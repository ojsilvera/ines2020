class CreatePollHeaders < ActiveRecord::Migration[6.0]
  def change
    create_table :poll_headers do |t|
      t.integer :age
      t.date :date

      t.timestamps
    end
  end
end
