class CreatePollBodies < ActiveRecord::Migration[6.0]
  def change
    create_table :poll_bodies do |t|

      t.timestamps
    end
  end
end
