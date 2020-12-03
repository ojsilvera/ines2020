class AddPollHeaderTopollBodies < ActiveRecord::Migration[6.0]
  def change
    add_foreign_key :poll_bodies, :poll_headers, column: :code, primary_key: 'code'
  end
end
