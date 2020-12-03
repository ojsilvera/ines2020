class AddPollHeaderToGroupFields < ActiveRecord::Migration[6.0]
  def change
    add_foreign_key :group_fields, :poll_headers, column: :code, primary_key: 'code'
  end
end
